import 'package:flutter/material.dart';

import 'package:blog_app/routes/constants.dart';
import 'package:blog_app/routes/convert.dart';

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
          await Navigator.of(context)
              .pushNamed(routePrefix(patterns: commentsShowRoute, ids: [1, 2]));
        },
        tooltip: 'コメントページへ',
        child: Icon(Icons.add),
      ),
    );
  }
}
