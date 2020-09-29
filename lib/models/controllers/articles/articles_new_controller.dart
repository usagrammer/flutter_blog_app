import 'package:blog_app/models/controllers/articles/articles_new_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:blog_app/models/state/article_state.dart';

final articlesNewProvider =
    StateNotifierProvider.autoDispose((ref) => ArticlesNewController());

// class IndexArticleList extends StateNotifier<ArticleListState> {
class ArticlesNewController extends StateNotifier<ArticleState> {
  ArticlesNewController() : super(ArticleState()) {}

  void changedTitle(value) {
    print('＜＜ChangedTitle...＞＞');
    state = state.copyWith(title: value);
  }

  void changedContent(value) {
    print('＜＜ChangedContent...＞＞');
    state = state.copyWith(content: value);
  }

  Future postArticle(newPost) async {
    final url = "https://flutter-blog-api-rabbit.herokuapp.com/articles";
    final dio = new Dio();

    var sendData = {
      "article": newPost,
    };

    var result = await dio
        .post(
      url,
      data: new FormData.fromMap(sendData),
      options: Options(
        headers: {
          "Authorization": " Bearer hoge",
        },
      ),
    )
        .then((response) {
      print("response_controller >>> ${response}");
      return "succeed";
    }).catchError((err) {
      print(err);
      print(err.message);
      return "error occured";
    });

    return result;
  }
}
