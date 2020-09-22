import 'package:flutter/material.dart';

import 'constants.dart';
import 'convert.dart';
import 'package:blog_app/routes/screen_arguments.dart';

import 'package:blog_app/views/articles/index.dart';
import 'package:blog_app/views/articles/new.dart';
import 'package:blog_app/views/articles/show.dart';

import 'package:blog_app/views/comments/show.dart';

import 'package:blog_app/views/users/registrations/new.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name;
    var params = {};

    if (path.contains(":")) {
      Map analyzedResults = analyzeRouteUrl(path);
      path = analyzedResults["path"];
      params = analyzedResults["parameters"];
    }

    dynamic returnRoute({page}) {
      return MaterialPageRoute(
        settings: RouteSettings(name: settings.name),
        builder: (_) => page,
      );
    }

    print("route_path:$path");
    print("route_params:$params");
    switch (path) {
      case homeRoute:
        return returnRoute(page: ArticlesIndex(params));
      // Articles
      case articlesIndexRoute:
        return returnRoute(page: ArticlesIndex(params));
      case articlesNewRoute:
        return returnRoute(page: ArticlesNew(params));
      case articlesShowRoute:
        return returnRoute(page: ArticlesShow(params));
      case commentsShowRoute:
        return returnRoute(page: CommentsShow(params));
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
