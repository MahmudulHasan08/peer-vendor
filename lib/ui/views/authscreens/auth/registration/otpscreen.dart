import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/ui/widgets/textfield.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

class RegistrationOtpScreen extends StatelessWidget {
  const RegistrationOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
    body: Container(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 155.h,
              width: 140.w,
              child: Image.asset(AppImg.peer_vendor,fit: BoxFit.cover,),
            ),
            SizedBox(height: 80.h,),
            ReuseAbleTextField(text: AppStrings.otp_digit),
            SizedBox(height: 40.h,),
            InkWell(
                onTap: ()=>Get.toNamed(registration_success),
                child: ReuseAbleButton(text: AppStrings.otp_button_Continue)),
          ],
        ),
      ),
    ),
    ),);
  }
}
