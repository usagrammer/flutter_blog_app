import 'package:flutter/material.dart';

import '../show.dart';

class ArticlesIndexArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(50.0),
      child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 300,
          height: 100,
          child: Row(
            children: <Widget>[
              Text(
                'IndexArticle',
                style: TextStyle(fontSize: 30),
              ),
              IconButton(
                icon: Icon(Icons.watch),
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ArticlesShow();
                    },
                  ));
                },
              ),
            ],
          )),
    );
  }
}
