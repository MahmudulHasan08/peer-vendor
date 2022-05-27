import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/ui/widgets/text.dart';
import 'package:peervendor/ui/widgets/textfield.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dropdownValue = AppStrings.login_Select_Country;

  List<String> Country = <String>[
    AppStrings.login_Select_Country,
    "Bangladesh",
    "Pakistan",
    "Saudi Arab"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45.h,
                width: 45.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.backButtonColor.withOpacity(0.5),
                ),
                child: IconButton(
                    onPressed: () {}, icon: Image.asset(AppImg.arrow)),
              ),
              SizedBox(
                height: 20.h,
              ),
              BigText(text: AppStrings.login_to_Proceed),
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ToggleSwitch(
                  minWidth: 110.w,
                  minHeight: 45.h,
                  activeBgColor: [AppColors.mainColor],
                  inactiveBgColor: AppColors.backButtonColor,
                  inactiveFgColor: AppColors.whiteColor,
                  fontSize: 20.sp,
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Phone',
                    'E-mail',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              ReuseAbleTextField(text: AppStrings.login_phone_Number,keyboardType: TextInputType.number,),
              SizedBox(
                height: 15.h,
              ),
              ReuseAbleTextField(
                text: "$dropdownValue",
                suffixIcon: DropdownButton<String>(
                    value: dropdownValue,
                    items:
                    Country.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (String? val) {
                      setState(() {
                        dropdownValue = val!;
                      });
                    }),
              ),
              SizedBox(
                height: 80.h,
              ),
              InkWell(
                  onTap: ()=>Get.toNamed(loginotp),
                  child: ReuseAbleButton(text: AppStrings.login_button_Continue)),
              SizedBox(
                height: 25.h,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.login_dont_have,
                      style: AppStyles.smallTextStyles,
                    ),
                    TextSpan(
                        text: AppStrings.login_button_Register,
                        style: AppStyles.buttonlightblue,
                        recognizer: TapGestureRecognizer()..onTap = () =>Get.toNamed(registration)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
