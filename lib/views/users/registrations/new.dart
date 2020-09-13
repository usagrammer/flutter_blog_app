import 'package:flutter/material.dart';

class UsersRegistrationsNew extends StatelessWidget {
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
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Text('UsersRegistrationsNew'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 投稿画面に遷移
          await Navigator.of(context).pop();
        },
        tooltip: 'ホバーすると出る文字',
        child: Icon(Icons.add),
      ),
    );
  }
}
