import 'package:blog_app/models/controllers/articles/articles_new_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:blog_app/models/state/article_state.dart';

final articlesNewProvider =
    StateNotifierProvider((ref) => ArticlesNewController());

// class IndexArticleList extends StateNotifier<ArticleListState> {
class ArticlesNewController extends StateNotifier<ArticleState> {
  ArticlesNewController() : super(ArticleState()) {}

  String changedTitle(value) {
    print('＜＜ChangedTitle...＞＞');
    state = state.copyWith(title: value);
    return state.title;
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
