import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:blog_app/models/controllers/articles/articles_new_controller.dart';

class ArticlesNewFormTitle extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final articlesNewController = watch(articlesNewProvider);
    final articlesNewState = watch(articlesNewProvider.state);
    final value = articlesNewState.title;

    return TextFormField(
      initialValue: value,
      decoration: const InputDecoration(
        hintText: '記事のタイトルを入力',
        labelText: 'タイトル',
      ),
      onChanged: (value) => articlesNewController.changedTitle(value),
    );
  }
}
