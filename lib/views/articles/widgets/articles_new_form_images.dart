import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'package:blog_app/models/controllers/articles/articles_new_controller.dart';

class ArticlesNewFormImages extends ConsumerWidget {
  var picker = ImagePicker();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final articlesNewController = watch(articlesNewProvider);
    final articlesNewState = watch(articlesNewProvider.state);
    final value = articlesNewState.image;

    return RaisedButton(
      onPressed: () async {
        picker.getImage(source: ImageSource.gallery).then((PickedFile value) {
          print("image_result >>> ${value}");
          articlesNewController.changedImage(value);
        });
      },
      child: Text('画像選択'),
    );
  }
}
