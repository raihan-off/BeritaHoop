
import 'dart:convert';

import 'package:berita_hoop/models/article_model.dart';
import 'package:http/http.dart' as http;

class News{

  List<ArticleModel> news = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=3efcf185666e43fa884afd30de3f9589" ;

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element["urlToImage"] != null && element["description"] != null){

          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element["url"],
              urlToImage: element['urlToImage'],
              content: element['context']
          );

          news.add(articleModel);
        }
      });
    }
  }
}