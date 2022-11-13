import 'package:flutter/material.dart';

class GIcon extends StatelessWidget {
  const GIcon( this.icon, {
    Key? key,
    this.size,
    this.color,
  }) : super(key: key);

  final IconData? icon;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
