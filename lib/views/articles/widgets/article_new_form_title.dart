import 'package:flutter/material.dart';

class ArticlesNewFormTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: '記事のタイトルを入力',
        labelText: 'タイトル',
      ),
    );
  }
}
