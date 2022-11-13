import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/svg_icon.dart';


class GAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String title;
  final void Function()? onPressed;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final double? elevation;
  final Color backgroundColor;

  const GAppBar({
    Key? key,
    required this.appBar,
    this.title = '',
    this.onPressed,
    this.actions,
    this.titleWidget,
    this.elevation,
    this.backgroundColor = kGenioGreenLightColor
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation?? 0,
      titleSpacing: 0,
      centerTitle: true,
      title: titleWidget ??
      Text(
        title,
        style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
          fontSize: MediaQuery.of(context).orientation == Orientation.portrait
              ? kSize18.sp
              : kSize16.sp,
        ),
      ),
      leading: IconButton(
        icon: GSvgIcon(
          'arrow_back.svg',
          size: 16.0.r,
          color: kBlackColor,
        ),
        onPressed: onPressed?? (){
          Navigator.pop(context);
        },
      ),
      actions: actions,
    );
  }
}
