import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';

import '../../utils/const/appcolors.dart';
import '../../utils/const/appimg.dart';
import '../../utils/const/appstrings.dart';
import '../styles/appstyles.dart';

Future DialogHomeScreen(context){
  return Get.defaultDialog(
      radius: 10.r,
      title: "",
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 350.h,
            width: 368.w,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Text(
                    AppStrings.suppotDialoge_Help_Support,
                    style: AppStyles.helpSupport,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppImg.playbutton),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppStrings.suppotDialoge_fix_problem,
                        style: AppStyles.helpSupportsub,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppImg.playbutton),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppStrings.suppotDialoge_how_toUSe,
                        style: AppStyles.helpSupportsub,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppImg.user),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppStrings.suppotDialoge_contactUS,
                        style: AppStyles.helpSupportsub,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -20.w,
            top: -90.h,
            child: InkWell(
              onTap: () => Get.toNamed(mainpage),
              child: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImg.close),
                ),
              ),
            ),
          )
        ],
      ));
}
