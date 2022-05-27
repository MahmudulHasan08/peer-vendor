import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/ui/widgets/text.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.all(30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.h),
            height: 97.h,
            width: 90.w,
            child: Image.asset(
              AppImg.peer_vendor,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BigText(text: AppStrings.auth_getStarted),
          SizedBox(
            height: 5.h,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: AppStrings.auth_rich_Text1,
                style: AppStyles.smallTextStyles,
              ),
              TextSpan(text: "\n "),
              TextSpan(
                  text: AppStrings.auth_rich_Text2,
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 18.sp,
                  ),
              ),
            ]),
          ),
          SizedBox(
            height: 80.h,
          ),
          InkWell(
            onTap: ()=>Get.toNamed(registration),
            child: ReuseAbleButton(
              text: AppStrings.auth_button_Register,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: ()=>Get.toNamed(login),
            child: ReuseAbleButton(
              text: AppStrings.auth_button_Login,
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          Align(
            alignment: Alignment.center,
            child: SmallText(text: AppStrings.auth_orcontinue_with),
          ),
          SizedBox(
            height: 32.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 70.w, right: 70.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImg.google),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImg.facebook),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImg.twitter),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
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
                AppStrings.auth_needHelp,
                style: AppStyles.buttonNeedhelp,
              ),
            ],
          )
        ],
      ),
    )));
  }
}
