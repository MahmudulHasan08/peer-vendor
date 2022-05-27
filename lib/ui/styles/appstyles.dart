import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peervendor/utils/const/appcolors.dart';

class AppStyles {
  static TextStyle smallTextStyles = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.TextColor,
    letterSpacing: 1.5,
  );
  static TextStyle langguageTextStyles = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static TextStyle skipButton = TextStyle(
    fontSize: 20.sp,
    color: AppColors.choosePageContainerColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle buttonNeedhelp = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.choosePageContainerColor,
  );
  static TextStyle buttonlightblue = TextStyle(
    color: Colors.lightBlue,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle locationStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.TextColor,

  );
  static TextStyle font15Style = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.TextColor,

  );
  static TextStyle noProductStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.TextColor,
  );
  static TextStyle helpSupport = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.TextColor,
  );
  static TextStyle helpSupportsub = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.choosePageContainerColor,
  );
  static TextStyle appbarStyle = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.TextColor,
  );

  static TextStyle watchnameStyle = GoogleFonts.raleway(
    textStyle: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color:Colors.black,
    )
  );

    static TextStyle myaddSeriesStyle = GoogleFonts.raleway(
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color:Color(0xFF868686),
      )
  );
  static TextStyle myaddPriceStyle = GoogleFonts.raleway(
      textStyle: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w700,
        color:AppColors.priceColor,
      )
  );
  static TextStyle sellchoosecategoryStyles = TextStyle(
    color: AppColors.TextColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font20w400 = TextStyle(
    color: AppColors.TextColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font14w300 = TextStyle(
    color: AppColors.TextColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle font13w500 = TextStyle(
    color: AppColors.TextColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font15w400 = GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.TextColor,
    )
  );
  static TextStyle font13Robotow300 = GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w300,
        color: AppColors.TextColor,
      )
  );
}