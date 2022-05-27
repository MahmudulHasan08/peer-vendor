import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/text.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';
import 'package:peervendor/utils/const/onboardingstrings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Obx(
            () => Expanded(
              flex: 6,
              child: Column(
                children: [
                  Image.asset(onBoardingContents[currentIndex.toInt()].img),
                  SizedBox(
                    height: 20.h,
                  ),
                  DotsIndicator(
                    dotsCount: onBoardingContents.length,
                    position: currentIndex.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.black87, // Inactive color
                      activeColor: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: onBoardingContents[currentIndex.toInt()].title,
                      size: 24.sp,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SmallText(
                        text:
                            onBoardingContents[currentIndex.toInt()].subtitle),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(authenticaton),
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 12.w,
                              ),
                              child: Text(
                                AppStrings.onBoarding_Skip,
                                style: AppStyles.skipButton,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (currentIndex ==
                                  onBoardingContents.length - 1) {
                                Get.toNamed(authenticaton);
                              } else {
                                currentIndex++;
                              }
                            },
                            child: Container(
                              height: 100.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(AppImg.slider_next),
                              )),
                              child: Center(
                                  child: BigText(
                                text: AppStrings.onBoarding_Next,
                                size: 24.sp,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
