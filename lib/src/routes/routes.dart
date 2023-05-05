import 'package:app_restaurant/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:app_restaurant/src/features/presentation/search_page/view/search_view.dart';
import 'package:app_restaurant/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:app_restaurant/src/features/presentation/Welcome_page/View/welcome_page.dart';
import 'package:app_restaurant/src/features/presentation/login_page/View/login_page.dart';
import 'package:app_restaurant/src/features/presentation/tabs/tabs_pages.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'forgot-password': (BuildContext context) => const ForgotPassword(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage(),
  'search': (BuildContext context) => const SearchPage()
};
