import 'package:flutter/material.dart';
import '../presentation/find_challenge_page_screen/find_challenge_page_screen.dart';
import '../presentation/dialog_box_screen/dialog_box_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String findChallengePageScreen = '/find_challenge_page_screen';

  static const String dialogBoxScreen = '/dialog_box_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    findChallengePageScreen: (context) => FindChallengePageScreen(),
    dialogBoxScreen: (context) => DialogBoxScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
