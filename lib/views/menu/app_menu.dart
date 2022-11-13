import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/genio_icons.dart';
import 'package:g_pay/views/menu/home_view.dart';

class AppMenu extends StatefulWidget {
  static const routeName = 'app_menu';

  const AppMenu({Key? key}) : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
  ];

  int selectedIndex = 0;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: _widgetOptions.elementAt(0),
        floatingActionButton: FloatingActionButton(

          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            height: 58.r,
            width: 58.r,
            decoration: BoxDecoration(
              color: kGenioGreenColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF4A5568).withOpacity(0.25),
                  blurRadius: 52.0,
                  spreadRadius: 0.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ]
            ),
            child: CircleAvatar(
              maxRadius: 29.r,
              backgroundImage: const AssetImage('assets/images/logo.png'),
            ),
          ),
          onPressed: () {  },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          shadow: BoxShadow(
            color: const Color(0xFF09005D).withOpacity(0.06),
            blurRadius: 8.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, -2.0),
          ),
          height: 74.h,
          backgroundColor: kWhiteColor,
          inactiveColor: kBlackColor,
          activeColor: kBlackColor,
          iconSize: 24.0.r,
          icons: const [
            GenioIcons.creditCard1,
            Icons.attach_money_rounded,
            GenioIcons.wallet,
            Icons.menu,
          ],
          activeIndex: 0,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          onTap: (index){},
          //other params
        ),
      ),
    );
  }

}

