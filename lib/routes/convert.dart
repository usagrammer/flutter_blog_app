import 'package:flutter/material.dart';

import 'package:inflection2/inflection2.dart';

Map analyzeRouteUrl(path) {
  List<String> paths = path.split('/');
  paths = paths.where((path) => path != "").toList();
  String convertedPath = '';
  Map parameters = {};
  paths.asMap().forEach((int index, String path) {
    if (path.contains(':')) {
      convertedPath = "${convertedPath}/:";
      // params[:article_id] = 1を作る
      String key = singularize(paths[index - 1]) + "_id";
      dynamic value = path.replaceFirst(':', '');
      parameters["$key"] = value;
    } else {
      convertedPath = "${convertedPath}/${path}";
    }
  });
  return {"path": convertedPath, "parameters": parameters};
}

String routePrefix({String patterns, List ids = const []}) {
  List<String> paths = patterns.split('/');
  paths = paths.where((path) => path != "").toList();
  String convertedPath = '';
  paths.forEach((String path) {
    if (path.contains(':')) {
      convertedPath = "${convertedPath}/:${ids[0]}";
      ids.removeAt(0);
    } else {
      convertedPath = "${convertedPath}/${path}";
    }
  });
  return convertedPath;
}
