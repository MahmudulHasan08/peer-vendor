import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/appbar.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

class ChooseImageScreen extends StatelessWidget {
  const ChooseImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: titleAppBar(AppStrings.choose_Images),
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.choose_Images_title,
              style: AppStyles.font20w400,
            ),
            SizedBox(
              height: 10.h,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: AppStrings.choose_Images_description_richtext1,
                  style: AppStyles.font13w500,
                ),
                TextSpan(
                  text: AppStrings.choose_Images_description_richtext2,
                  style: AppStyles.buttonlightblue,
                  recognizer: TapGestureRecognizer()..onTap = () {},
                )
              ]),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 80.h,
              width: 75.w,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2.r),
                    blurRadius: 4.r,
                    spreadRadius: 0.0,
                    color: Color(0xFF000000).withOpacity(0.25.r),
                  )
                ],
              ),
              child: Image.asset(
                AppImg.addplus,
                height: 35.h,
                width: 35.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 340.h,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 20.h,
                  ),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return Image.asset(
                      AppImg.phone,
                      height: 160.h,
                      width: 120.w,
                      fit: BoxFit.cover,
                    );
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            ReuseAbleButton(
              text: AppStrings.choose_Images_button_continue,
              onpress: () => Get.toNamed(sellsuccess),
            ),
          ],
        ),
      ),
    ));
  }
}
