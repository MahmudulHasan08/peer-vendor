import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendor/utils/const/appstrings.dart';

import '../../utils/const/appcolors.dart';
import '../styles/appstyles.dart';

class ReuseAbleTextField extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String text;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const ReuseAbleTextField({Key? key, required this.text, this.controller, this.keyboardType, this.validator, this.suffixIcon, this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: text,
      ),
    );
  }
}


class ProductDetailedtextField extends StatelessWidget {
  final String text;
  const ProductDetailedtextField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColors.whiteColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: text,
              hintStyle: AppStyles.font14w300,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.whiteColor
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.whiteColor
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class ProductDetailedBigtextField extends StatelessWidget {
  final String text;
  const ProductDetailedBigtextField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding:  EdgeInsets.only(top: 20.h,left: 30.w),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: text,
            hintStyle: AppStyles.font14w300,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.whiteColor
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.whiteColor
              ),
            ),
          ),
        ),
      ),
    );
  }
}

