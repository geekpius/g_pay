import 'package:flutter/material.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/views/international_transfer_view.dart';
import 'package:g_pay/views/menu/app_menu.dart';
import 'package:g_pay/views/plan_view.dart';
import 'package:g_pay/views/tax_registration_view.dart';
import 'package:g_pay/views/verify_identify_view.dart';

class RouteGenerator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String routeName, {Object? args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static goBack() {
    return navigatorKey.currentState!.pop();
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppMenu.routeName:
        return MaterialPageRoute(builder: (context) => const AppMenu());

      case VerifyIdentityView.routeName:
        return MaterialPageRoute(builder: (context) => const VerifyIdentityView());

      case PlanView.routeName:
        return MaterialPageRoute(builder: (context) => const PlanView());

      case TaxRegistrationView.routeName:
        return MaterialPageRoute(builder: (context) => const TaxRegistrationView());

      case InternationalTransferView.routeName:
        return MaterialPageRoute(builder: (context) => const InternationalTransferView());



      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        backgroundColor: kWhiteColor,
        body: Center(
          child: Text(
              'Page Not Found!',
              style: kBoldFontStyle.copyWith(fontSize: kSize16, color: kBlackColor),
          ),
        ),
      );
    });
  }
}
