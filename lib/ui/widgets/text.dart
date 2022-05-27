import 'package:flutter/material.dart';
import 'package:peervendor/utils/const/appcolors.dart';

import '../styles/appstyles.dart';

class SmallText extends StatelessWidget {
  final String text;

  const SmallText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.smallTextStyles,
    );
  }
}


class BigText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  const BigText({Key? key, required this.text,  this.size=36, this.color=AppColors.TextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
    ),);
  }
}
