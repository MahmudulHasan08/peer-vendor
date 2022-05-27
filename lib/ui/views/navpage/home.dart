import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
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
                  SizedBox(
                    height: 11.h,
                  ),
                  //product area
                  Container(
                    padding: EdgeInsets.only(
                        left: 36.w, right: 36.w, top: 17.h, bottom: 26.h),
                    height: 330.h,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: AppColors.borderColor,
                          width: 1.w,
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImg.productarea,
                          height: 108.h,
                          width: 108.w,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          AppStrings.dashboardscreen_No_Products,
                          style: AppStyles.noProductStyle,
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        ReuseAbleButton(
                            text: AppStrings.dashboardscreen_Search_in_nearby),
                        SizedBox(
                          height: 7.h,
                        ),
                        ReuseAbleButton(
                            text: AppStrings.dashboardscreen_Put_Up),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 100.h,
              right: 35.w,
              child: InkWell(
                onTap: () {
                  Get.defaultDialog(
                      radius: 10.r,
                      title: "",
                      content: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 328.h,
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
                              onTap: () => Get.back(),
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
                },
                child: Container(
                  height: 70.h,
                  width: 70.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImg.headphone),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(45.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
