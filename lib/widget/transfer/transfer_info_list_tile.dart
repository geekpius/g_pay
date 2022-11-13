import 'package:flutter/material.dart';

class TransferInfoListTile extends StatelessWidget {
  const TransferInfoListTile({
    Key? key,
    this.title,
    this.subTitle,
    this.trailing,
    this.leading,
  }) : super(key: key);

  final Widget? title;
  final Widget? subTitle;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: leading,
      title: title,
      subtitle: subTitle,
      trailing: trailing,
    );
  }
}
