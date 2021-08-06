import 'package:flutter/material.dart';

//Pages
import 'package:flutter_application_2/src/features/presentations/forgotpassword_page/view/forgotpassword_page.dart';
import 'package:flutter_application_2/src/features/presentations/login_page/view/login_page.dart';
import 'package:flutter_application_2/src/features/presentations/search_page/view/search_page.dart';
import 'package:flutter_application_2/src/features/presentations/signup_page/view/signup_page.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/tabs_page.dart';
import 'package:flutter_application_2/src/features/presentations/welcome_page/view/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgotpassword': (BuildContext context) => ForgotPassword(),
  'signup': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage()
};
