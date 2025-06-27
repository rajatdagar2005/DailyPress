import 'dart:convert';
import 'package:dailypress/model/show_category.dart';
import 'package:dailypress/model/slider_model.dart';
import 'package:http/http.dart' as http;

class ShowCategoryNews{
  List<ShowCategoryModel> categories = [];

  Future<void> getCategoriesNews(String category)async{
    String url = "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=f00e90fbde3a4352a8bb2fd215dd1d82" ;
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if(jsonData['status']== 'ok' ){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!=null && element['description']!=null ){
          ShowCategoryModel categoryModel = ShowCategoryModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );
          categories.add(categoryModel);
        }
      });
    }
  }
}