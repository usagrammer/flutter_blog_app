import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'articles_new_form_title.dart';
import 'articles_new_form_content.dart';

import 'package:blog_app/models/controllers/articles/articles_new_controller.dart';

class ArticlesNewForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  String _title = '';
  String _content = '';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final newArticlesController = watch(articlesNewProvider);
    final newArticlesState = watch(articlesNewProvider.state);

    return ProviderScope(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            ArticlesNewFormTitle(),
            ArticlesNewFormContent(),
            ArticlesNewFormSubmit(),
          ],
        ),
      ),
    );
    // /Form

    void _submit() {
      if (this._formKey.currentState.validate()) {
        this._formKey.currentState.save();
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')));
        print(this._title);
        print(this._content);
      }
    }
  }
  // /submit
}

class ArticlesNewFormSubmit extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final newArticlesController = watch(articlesNewProvider);
    final newArticlesState = watch(articlesNewProvider.state);

    return RaisedButton(
      onPressed: () async {
        dynamic controller = ArticlesNewController();
        print("【START】post_articles");
        print(newArticlesState);
        dynamic result =
            await controller.postArticle(newArticlesState.toJson());
        await print("response>>>${result}");
        await print("【END】post_articles");

        if (result != "error occured") {
          await Navigator.of(context).pop();
        }
      },
      child: Text('保存'),
    );
  }
}
