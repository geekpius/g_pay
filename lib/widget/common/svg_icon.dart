import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_pay/constants.dart';

class GSvgIcon extends StatelessWidget {
  const GSvgIcon( this.assetName, {
    Key? key,
    this.color,
    this.height,
    this.width,
    this.size,
  }) : assert((height != null && width!= null) || size != null),
        super(key: key);

  final String assetName;
  final Color? color;
  final double? height;
  final double? width;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      '$kSvgPath/$assetName',
      color: color,
      height: size?? height,
      width: size?? width,
    );
  }
}
