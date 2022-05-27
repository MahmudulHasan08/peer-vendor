import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/widgets/text.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

import '../../../../routes/route.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: ()=>Get.toNamed(mainpage),
                child: Image.asset(
                  AppImg.check,
                  height: 125.h,
                  width: 115.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                  onTap: ()=>Get.toNamed(mainpage),
                  child: BigText(text: AppStrings.well_done,size: 40.sp,)),
            ],
          ),
        ),
      ),
    );
  }
}
