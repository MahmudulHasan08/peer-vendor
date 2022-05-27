import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/card.dart';
import 'package:peervendor/ui/widgets/text.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

import '../../widgets/appbar.dart';



class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: titleAppBar(AppStrings.settings),
          body: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      ReuseAbleCard(text: AppStrings.settings_Edit_Profile),
                      ReuseAbleCard(text: AppStrings.settings_Language),
                      ReuseAbleCard(text: AppStrings.settings_Logout),
                      ReuseAbleCard(text: AppStrings.settings_Deactivate_Accountt),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
