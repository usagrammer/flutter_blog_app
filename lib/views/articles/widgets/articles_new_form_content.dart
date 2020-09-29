import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:blog_app/models/controllers/articles/articles_new_controller.dart';

class ArticlesNewFormContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final articlesNewController = watch(articlesNewProvider);
    final articlesNewState = watch(articlesNewProvider.state);
    final value = articlesNewState.content;

    return TextFormField(
      initialValue: value,
      decoration: const InputDecoration(
        hintText: '記事の本文を入力',
        labelText: '本文',
      ),
      onChanged: (value) => articlesNewController.changedContent(value),
    );
  }
}
