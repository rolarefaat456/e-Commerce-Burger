import 'package:flutter/material.dart';
import '../../features/checkout/presentation/view/check_out_view.dart';
import '../../features/auth/presentation/view/login_view.dart';
import '../../features/auth/presentation/view/sign_up_view.dart';
import '../../features/cart/presentation/view/card_view.dart';
import '../../features/orderhistory/presentation/view/order_history_view.dart';
import '../../features/products/presentation/view/product_details_view.dart';
import '../../features/root/presentation/view/root_view.dart';
import '../../splash_view.dart';

import '../../core/constans/routes.dart';

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
    case Routes.productDetailsRoute:
      return MaterialPageRoute(builder: (context) => ProductDetailsView());
    case Routes.cartRoute:
      return MaterialPageRoute(builder: (context) => CartView());
    case Routes.orderHistoryRoute:
      return MaterialPageRoute(builder: (context) => OrderHistoryView());
    case Routes.checkoutRoute:
      return MaterialPageRoute(builder: (context) => CheckOutView());
    default:
      return MaterialPageRoute(
        builder: (context) =>
            Scaffold(body: Center(child: Text('No Routes Found'))),
      );
  }
}
