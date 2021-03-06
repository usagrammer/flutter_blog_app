import 'package:flutter/material.dart';

import 'package:blog_app/routes/constants.dart';

import 'new.dart';
import 'show.dart';

import 'widgets/articles_index_article.dart';

import 'package:blog_app/views/users/registrations/new.dart';

import 'package:blog_app/models/controllers/index_article_list.dart';

class ArticlesIndex extends StatelessWidget {
  final Map params;
  ArticlesIndex(this.params);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: 左端
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        title: Text("ArticlesIndex"),
        actions: <Widget>[
          // 右端のアイコンたち
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () async {
              await Navigator.of(context).pushNamed(usersRegistrationsNewRoute);
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ArticlesIndexArticle(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 投稿画面に遷移
          await Navigator.of(context).pushNamed(articlesNewRoute);
          // dynamic hoge = IndexArticleList();
          // print("【START】get_articles");
          // hoge.getArticles();
          // print("【END】get_articles");
        },
        tooltip: 'ホバーすると出る文字',
        child: Icon(Icons.add),
      ),
    );
  }
}
