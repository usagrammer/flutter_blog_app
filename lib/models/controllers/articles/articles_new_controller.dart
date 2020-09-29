import 'package:blog_app/models/controllers/articles/articles_new_state.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:blog_app/models/state/article_state.dart';

final articlesNewProvider =
    StateNotifierProvider.autoDispose((ref) => ArticlesNewController());

// class IndexArticleList extends StateNotifier<ArticleListState> {
class ArticlesNewController extends StateNotifier<ArticleState> {
  ArticlesNewController() : super(ArticleState()) {}

  void changedTitle(value) {
    print('＜＜ChangedTitle...＞＞');
    state = state.copyWith(title: value);
  }

  void changedContent(value) {
    print('＜＜ChangedContent...＞＞');
    state = state.copyWith(content: value);
  }

  void changedImage(value) {
    print('＜＜ChangedImage...＞＞');
    state = state.copyWith(image: value);
  }

  Future postArticle(newPost) async {
    final url = "https://flutter-blog-api-rabbit.herokuapp.com/articles";
    final dio = new Dio();

    print("<START postArticle...>");

    dynamic image = newPost.image;

    final multipartFile = http.MultipartFile.fromBytes(
        'file', await image.readAsBytes(),
        contentType: MediaType('application', 'octet-stream'));

    print(image);
    // final multipartFile = http.MultipartFile.fromBytes(
    //     'file', await image.readAsBytes(),
    //     contentType: MediaType('application', 'octet-stream'));

    var sendData = {
      "article": newPost.toJson(),
    };

    String fileName = image.path.split('/').last;
    print("Image_path>>>${image.path}");
    print("Image_name>>>${fileName}");
    // print("loadingImage...");
    // var mediaData = await ImagePickerWeb.getImageInfo;
    // String mimeType = mime(Path.basename(mediaData.fileName));
    // html.File mediaFile =
    //     new html.File(mediaData.data, mediaData.fileName, {'type': mimeType});
    // sendData["article"]["image"] =
    //     await MultipartFile.fromFile(image.path, filename: fileName);

    print("sendData >>> ${sendData}");

    var result = await dio
        .post(
      url,
      data: new FormData.fromMap(sendData),
      options: Options(
        headers: {
          "Content-Type": "multipart/form-data",
          "Authorization": " Bearer hoge",
        },
      ),
    )
        .then((response) {
      print("response_controller >>> ${response}");
      return "succeed";
    }).catchError((err) {
      print(err);
      print(err.message);
      return "error occured";
    });

    return result;
  }
}
