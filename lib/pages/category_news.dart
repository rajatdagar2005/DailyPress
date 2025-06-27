import 'package:cached_network_image/cached_network_image.dart';
import 'package:dailypress/model/show_category.dart';
import 'package:dailypress/model/slider_model.dart';
import 'package:dailypress/pages/article_view.dart';
import 'package:dailypress/services/show_category_news.dart';
import 'package:flutter/material.dart';

class CategoryNews extends StatefulWidget{
  String name;
  CategoryNews({required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews>{
  List<ShowCategoryModel> categories = [];
  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getNews();
  }

  getNews()async{
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoriesNews(widget.name.toLowerCase());
    categories = showCategoryNews.categories;
    setState(() {
      _loading = false;
      }
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:
        Text(widget.name,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(shrinkWrap: true
            ,physics: ClampingScrollPhysics()
            ,itemCount: categories.length
            ,itemBuilder: (context,index){

          return ShowCategory(
            Image: categories[index].urlToImage!,
            desc: categories[index].description!,
            title: categories[index].title!,
            url: categories[index].url!,
            );
          }
        ),
      )
    );
  }
}

class ShowCategory extends StatelessWidget{
  final String Image,desc,title,url ;
  ShowCategory({required this.Image,required this.desc,required this.title,required this.url});

  //const ShowCategory({super.key});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)));
      },
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(imageUrl:Image,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                height: 200,),
            ),
            SizedBox(height: 5.0,),
            Text(title,
              maxLines: 2,
              style: TextStyle(color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(desc,maxLines: 3,),
            SizedBox(height: 20.0,)
          ],
        ),
      ),
    );
  }
}