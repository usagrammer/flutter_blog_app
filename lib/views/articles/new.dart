import 'package:flutter/material.dart';

import 'index.dart';

import 'widgets/articles_new_form.dart';

class ArticlesNew extends StatelessWidget {
  final Map params;
  ArticlesNew(this.params);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: 左端
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        title: Text("ArticlesNew"),
        actions: <Widget>[
          // 右端のアイコンたち
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: ArticlesNewForm(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 投稿画面に遷移
          await Navigator.of(context).pop();
        },
        tooltip: 'ホバーすると出る文字',
        child: Icon(Icons.star),
      ),
    );
  }
}
