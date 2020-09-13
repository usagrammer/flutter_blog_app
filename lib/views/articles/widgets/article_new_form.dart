import 'package:flutter/material.dart';

import 'article_new_form_title.dart';
import 'article_new_form_content.dart';

class ArticlesNewForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          ArticlesNewFormTitle(),
          ArticlesNewFormContent(),
        ],
      ),
    );
    // /Form

    void _submit() {
      if (this._formKey.currentState.validate()) {
        this._formKey.currentState.save();
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')));
        print(this._name);
        print(this._email);
      }
    }
  }
  // /submit
}
