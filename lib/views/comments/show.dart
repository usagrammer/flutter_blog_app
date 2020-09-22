import 'package:flutter/material.dart';

class CommentsShow extends StatelessWidget {
  final Map params;
  CommentsShow(this.params);

  @override
  Widget build(BuildContext context) {
    print("buildCommentsShow");
    return Scaffold(
      appBar: AppBar(
        // leading: 左端
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        title: Text(
            "CommentsShow[${this.params['article_id']}, ${this.params['comment_id']}]"),
        actions: <Widget>[
          // 右端のアイコンたち
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Text('ド真ん中のテキスト'),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // 投稿画面に遷移
      //     // await Navigator.of(context).push(
      //     //   MaterialPageRoute(builder: (context) {
      //     //     return Co();
      //     //   }),
      //     // );
      //   },
      //   tooltip: 'ホバーすると出る文字',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
