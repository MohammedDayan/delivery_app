import 'package:delivery_app/screens/dashboard_screen.dart';
import 'package:delivery_app/screens/signin_screen.dart';
import 'package:flutter/cupertino.dart';

import '../screens/signup_screen.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return {
      SignUpScreen.routeName: (context) => SignUpScreen(),
      SignInScreen.routeName: (context) => SignInScreen(),
      DashBoardScreen.routeName: (context) => const DashBoardScreen(),
    };
  }
}
