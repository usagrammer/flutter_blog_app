import 'package:flutter/material.dart';

import 'new.dart';
import 'show.dart';

import 'widgets/articles_index_article.dart';

import 'package:blog_app/views/users/registrations/new.dart';

class ArticlesIndex extends StatelessWidget {
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
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return UsersRegistrationsNew();
                }),
              );
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
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return ArticlesNew();
            }),
          );
        },
        tooltip: 'ホバーすると出る文字',
        child: Icon(Icons.add),
      ),
    );
  }
}
