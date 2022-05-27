import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/const/appcolors.dart';
import '../../../utils/const/appimg.dart';
import '../../../utils/const/appstrings.dart';
import '../../styles/appstyles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
            children: [
        Container(
        padding: EdgeInsets.only(
        left: 20.w, right: 20.w, top: 15.h, bottom: 15.h),
        height: 60.h,
        color: AppColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImg.location),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 11.w,
                ),
                Text(
                  AppStrings.dashboardscreen_Location,
                  style: AppStyles.locationStyle,
                ),
              ],
            ),
            Container(
              height: 21.h,
              width: 21.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImg.information),
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
      ),
        SizedBox(
          height: 11.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: AppColors.whiteColor,
          ),
          padding: EdgeInsets.only(
              left: 20.w, right: 20.w, top: 8.h, bottom: 8.h),
          margin: EdgeInsets.only(left: 20.w, right: 20.w),
          height: 50.h,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 250.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText:
                    AppStrings.dashboardscreen_Search_Products,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                AppImg.search,
                height: 19.h,
                width: 19.h,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        SizedBox(
          height: 11.h,
        ),
        Container(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 10),
                height: 40.h,
                width: 180.w,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: AppColors.backButtonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    AppStrings.dashboardscreen_Cars_Bikes_Bicycles,
                    style: AppStyles.font15Style,
                  ),
                ),
              ),
              Container(
                height: 40.h,
                width: 195.w,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: AppColors.backButtonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    AppStrings.dashboardscreen_Electronics_Appliances,
                    style: AppStyles.font15Style,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]
    )
          )
    )
    );
  }
}
