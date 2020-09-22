import 'package:flutter/material.dart';

import 'constants.dart';
import 'package:blog_app/routes/screen_arguments.dart';

import 'package:blog_app/views/articles/index.dart';
import 'package:blog_app/views/articles/new.dart';
import 'package:blog_app/views/articles/show.dart';

import 'package:blog_app/views/users/registrations/new.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name;
    var paths = settings.name.split('?');
    var args = {"hoge": "222"};
    print("ーーーURL解析ーーー");
    print("URL:${settings.name}");
    print("paths:$paths");

    print("path[0]:${paths[0]}");

    // var queryParameters = Uri.splitQueryString(paths[1]);
    // print("queryParameters:$queryParameters");

    dynamic buildParameters() {
      print("path has parameters");
      path = paths[0];
      print("changedPath:$path");
    }

    if (paths.length > 1) buildParameters();
    print("ーーーURL解析ここまでーーー");

    dynamic returnRoute({page}) {
      return MaterialPageRoute(
        settings: RouteSettings(name: settings.name),
        builder: (_) => page,
      );
    }

    switch (path) {
      case homeRoute:
        return returnRoute(page: ArticlesIndex());
      // Articles
      case articlesIndexRoute:
        return returnRoute(page: ArticlesIndex());
      case articlesNewRoute:
        return returnRoute(page: ArticlesNew());
      case articlesShowRoute:
        return returnRoute(page: ArticlesShow(args));
      // User
      case usersRegistrationsNewRoute:
        return returnRoute(page: UsersRegistrationsNew());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
