import 'package:flutter/material.dart';

import 'constants.dart';

import 'package:blog_app/views/users/registrations/new.dart';

class UsersRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case usersRegistrationsNewRoute:
        return MaterialPageRoute(builder: (_) => UsersRegistrationsNew());
    }
  }
}
