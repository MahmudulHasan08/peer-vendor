import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendor/utils/const/appcolors.dart';

class ReuseAbleButton extends StatelessWidget {
  final String text;
  final void Function()? onpress;
  const ReuseAbleButton({Key? key, required this.text, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 50,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.mainColor,
          border: Border.all(
            color: Color(0xFF00A3FF),
            width: 1.w,
          )
        ),
        child: Container(
          margin: EdgeInsets.only(left: 25.w,top: 10.h,bottom: 10.h),
          child: Text(text,style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20.sp,
          ),),
        ),
      ),
    );
  }
}
