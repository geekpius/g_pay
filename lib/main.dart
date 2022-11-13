import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/classes/orientation_helpers.dart';
import 'package:g_pay/classes/theme.dart';
import 'package:g_pay/route_generator.dart';
import 'package:g_pay/views/menu/app_menu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    initializeProviders(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        initialRoute: AppMenu.routeName,
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: RouteGenerator.navigatorKey,
        navigatorObservers: [NavigatorObserverWithOrientation()],
      ),
    );
  }

  void initializeProviders(BuildContext context){

  }
}