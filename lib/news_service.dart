import 'dart:convert';

import 'package:http/http.dart' as http;

import 'news_model.dart';

class NewsService {
  static var client = http.Client();

  static Future<NewsModel?> getNews() async {
    var response = await client.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=tr&apiKey=a999147cbcfc4a6c8e92df5d3bda1730'));
    if (response.statusCode == 200) {
      await Future.delayed(Duration(seconds: 3), () {});
      var jsonString = response.body;
      return NewsModel.fromJson(jsonDecode(jsonString));
    } else {
      //show error message
      return null;
    }
  }
}
