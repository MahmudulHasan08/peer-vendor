import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/const/appstrings.dart';
import '../../styles/appstyles.dart';
import '../../widgets/text.dart';


class ChooseLangguageScreen extends StatefulWidget {

  @override
  State<ChooseLangguageScreen> createState() => _ChooseLangguageScreenState();
}

class _ChooseLangguageScreenState extends State<ChooseLangguageScreen> {
  langguagename? _value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 290.h, right: 50.w, left: 50.w),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.only(left: 30.w, right: 50, top: 50.h),
                height: 310.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.choosePageContainerColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 2.r,
                        color: Color(0xFF000000).withOpacity(0.15),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: AppStrings.choose_langguage,
                      size: 20.sp,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: AppColors.radioActiveColor,
                            focusColor: AppColors.whiteColor,
                            hoverColor: AppColors.whiteColor.withOpacity(0.5),
                            overlayColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFFFFFFFF).withOpacity(0.5)),
                            value: langguagename.English,
                            groupValue: _value,
                            onChanged: (langguagename? val) {
                              setState((){
                                _value=val;
                                Timer(Duration(seconds: 1), () {
                                  Get.toNamed(onboarding);
                                });
                              });

                            }),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          AppStrings.langguage_english,
                          style: AppStyles.langguageTextStyles,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(

                            activeColor:AppColors.radioActiveColor,
                            focusColor: AppColors.whiteColor,
                            hoverColor: AppColors.whiteColor.withOpacity(0.5),
                            overlayColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFFFFFFFF).withOpacity(0.5)),
                            value: langguagename.Kiswahili,
                            groupValue: _value,
                            onChanged: (langguagename? val) {
                              setState((){
                                _value=val;
                                Timer(Duration(seconds: 1), () {
                                  Get.toNamed(onboarding);
                                });
                              });
                            }
                            ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          AppStrings.langguage_francais,
                          style: AppStyles.langguageTextStyles,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(

                            activeColor:AppColors.radioActiveColor,
                            focusColor: AppColors.whiteColor,
                            hoverColor: AppColors.whiteColor.withOpacity(0.5),
                            overlayColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFFFFFFFF).withOpacity(0.5)),
                            value: langguagename.Francais,
                            groupValue: _value,
                            onChanged: (langguagename? val) {
                              setState((){
                                _value=val;
                                Timer(Duration(seconds: 1), () {
                                  Get.toNamed(onboarding);
                                });

                              });
                            }
                            ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          AppStrings.langguage_kiswahili,
                          style: AppStyles.langguageTextStyles,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -90.h,
                left: 110.w,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: AppColors.mainColor,
                    height: 100.h,
                    width: 100.w,
                    child: CircleAvatar(
                      child: Image.asset(
                        "assets/images/peer_vendors.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
