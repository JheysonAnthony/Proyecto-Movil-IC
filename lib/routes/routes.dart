import 'package:flutter/material.dart';

//Pages
import 'package:flutter_application_2/pages/login_page.dart';
import 'package:flutter_application_2/pages/signup_page.dart';
import 'package:flutter_application_2/pages/welcome_page.dart';
import 'package:flutter_application_2/pages/forgotpassword_page.dart';
import 'package:flutter_application_2/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgotpassword': (BuildContext context) => ForgotPassword(),
  'signup': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage()
};
