import 'package:flutter/material.dart';

import 'routes/constants.dart';
import 'routes/router.dart';
import 'routes/users.dart';

import 'views/articles/index.dart';
import 'views/articles/new.dart';

import 'package:blog_app/views/users/registrations/new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: homeRoute,
      // home: ArticlesIndex(),
    );
  }
}
