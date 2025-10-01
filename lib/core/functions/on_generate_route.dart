import 'package:flutter/material.dart';
import 'package:hungry/features/auth/presentation/view/login_view.dart';
import 'package:hungry/features/auth/presentation/view/sign_up_view.dart';
import 'package:hungry/features/root/presentation/view/root_view.dart';
import 'package:hungry/splash_view.dart';

import '../constans/routes.dart';

Route onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case Routes.splashRoute:
      return MaterialPageRoute(builder: (context) => SplashView());
    case Routes.loginRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    case Routes.signUpRoute:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case Routes.rootRoute:
      return MaterialPageRoute(builder: (context) => RootView());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            Scaffold(body: Center(child: Text('No Routes Found'))),
      );
  }
}
