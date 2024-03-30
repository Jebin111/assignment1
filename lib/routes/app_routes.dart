import 'package:assignment2/presentation/questionnaire_screen/firstpage.dart';
import 'package:flutter/material.dart';
import '../presentation/questionnaire_screen/questionnaire_screen.dart';

class AppRoutes {
  static const String questionnaireScreen = '/questionnaire_screen';

  static Map<String, WidgetBuilder> routes = {
    questionnaireScreen: (context) => firstpage()
  };
}
