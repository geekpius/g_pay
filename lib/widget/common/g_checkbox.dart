
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class GCheckBox extends StatelessWidget {
  const GCheckBox({
    Key? key,
    required this.onChanged,
    this.isChecked = false,
  }) : super(key: key);

  final bool isChecked;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: kGenioGreenColor,
      ),
      child: Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: kGenioGreenColor,
          checkColor: kWhiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0.r)),
          side: const BorderSide(width: 1.0, color: kGenioGreenColor),
        ),
      ),
    );
  }
}
