import 'package:flutter/material.dart';

class ArticlesNewFormContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: '記事の本文を入力',
        labelText: '本文',
      ),
    );
  }
}
