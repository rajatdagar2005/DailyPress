import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../model/article_model.dart';
import '../model/slider_model.dart';
import '../services/news.dart';
import '../services/slider_data.dart';
import 'article_view.dart';

class AllNews extends StatefulWidget{
  String news;
  AllNews({required this.news});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews>{

  List<sliderModel> sliders = [];
  List<ArticleModel> articles = [];

  void initState(){
    getSlider();
    getNews();
    super.initState();
    //WebViewPlatform.instance = SurfaceAndroidWebView();
  }


  getNews()async{
    News newsclass = News();
    await newsclass.getNews();
    articles = newsclass.news;
    setState(() {

    });
  }

  getSlider() async {
    Sliders slider =  Sliders();
    await slider.getSlider();
    sliders = slider.sliders;
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title:
          Text(widget.news+" News",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child:
        ListView.builder(shrinkWrap: true
            ,physics: ClampingScrollPhysics()
            ,itemCount: widget.news == "Breaking"?  sliders.length:articles.length,
            itemBuilder: (context,index){

              return AllNewsSection(
                Image: widget.news == "Breaking"?  sliders[index].urlToImage!: articles[index].urlToImage!,
                desc: widget.news == "Breaking"?  sliders[index].description!: articles[index].description!,
                title: widget.news == "Breaking"?  sliders[index].title!: articles[index].title!,
                url: widget.news == "Breaking"?  sliders[index].url!: articles[index].url!,
              );
            }
        ),
      )
    );
  }
}

class AllNewsSection extends StatelessWidget{
  final String Image,desc,title,url ;
  AllNewsSection({required this.Image,required this.desc,required this.title,required this.url});

  //const ShowCategory({super.key});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)));
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