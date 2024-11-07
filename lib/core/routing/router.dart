import 'package:flutter/cupertino.dart';
import 'package:perfection_task/core/constants/app_keys.dart';
import 'package:perfection_task/domains/entities/user.dart';
import 'package:perfection_task/ui/views/user/user_details/user_details_screen.dart';
import 'package:perfection_task/ui/views/user/users/users_screen.dart';
import 'app_routes.dart';

abstract class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.usersScreen:
        return CupertinoPageRoute(
            settings: settings,
            builder: (_) => const UsersScreen());
    ////////////////////////////////////////////////////////////////
      case AppRoutes.userDetailsScreen:
      final userArg = ((settings.arguments
          as Map<String, dynamic>)[AppKeys.currentUserKey]) as User;
        return CupertinoPageRoute(
            settings: settings,
            builder: (_) => UserDetailsScreen(user: userArg));
    ////////////////////////////////////////////////////////////////
      default:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const SizedBox.shrink());
    }
  }
}
