import 'package:flutter/material.dart';

import 'package:blog_app/routes/constants.dart';
import 'package:blog_app/routes/convert.dart';

import 'package:blog_app/models/controllers/index_article_list.dart';

class ArticlesShow extends StatelessWidget {
  final Map params;
  ArticlesShow(this.params);

  @override
  Widget build(BuildContext context) {
    // final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    print("params:$params");

    return Scaffold(
      appBar: AppBar(
        // leading: 左端
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        title: Text("ArticlesShow[id:${this.params['article_id']}]"),
        actions: <Widget>[
          // 右端のアイコンたち
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Text('ArticlesShow'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 投稿画面に遷移
          // await Navigator.of(context)
          //     .pushNamed(routePrefix(patterns: commentsShowRoute, ids: [1, 2]));
          dynamic hoge = IndexArticleList();
          print("【START】post_articles");
          hoge.postArticle();
          print("【END】post_articles");
        },
        tooltip: 'コメントページへ',
        child: Icon(Icons.add),
      ),
    );
  }
}
