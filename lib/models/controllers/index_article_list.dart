import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:dio/dio.dart';

// final articlesProvider = StateNotifierProvider((ref) => ArticleList());

// class IndexArticleList extends StateNotifier<ArticleListState> {
class IndexArticleList {
  // List articles = [];
  // bool _isLoading = false;

  // ArticleList() : super(ArticleListState()) {}

  // void setArticles(new_articles) {
  //   print('＜＜setArticles...＞＞');
  //   state = state.copyWith(articles: new_articles);
  //   print(state.articles.length);
  // }

  Future<List> getArticles() async {
    final url = "https://flutter-blog-api-rabbit.herokuapp.com/articles";

    try {
      Response response = await Dio().get(
        url,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer hoge",
          },
        ),
      );
      print(response);
      // setArticles(response.data);
    } catch (e) {
      print(e);
    }
  }

  void postArticle() async {
    final url = "https://flutter-blog-api-rabbit.herokuapp.com/articles";
    final dio = new Dio();

    var payload = {
      "article": {
        "title": "タイトル",
        "content": "内容",
        "category_id": "1",
      }
    };
    var data = await dio
        .post(
      url,
      data: new FormData.fromMap(payload),
      options: Options(
        headers: {
          "Authorization": " Bearer fugahoge",
        },
      ),
    )
        .then((response) {
      return response.data;
    }).catchError((err) {
      print(err);
      print(err.message);
      return null;
    });
  }
}
