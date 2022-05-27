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

import '../../../widgets/appbar.dart';

class SellScreen2 extends StatelessWidget {
  const SellScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.mainColor,
        onPressed: () {
          Get.toNamed(productdetails);
        },
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
      appBar: titleAppBar(AppStrings.sell),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.sells2_Choose_Sub_Category,
              style: AppStyles.sellchoosecategoryStyles,
            ),
            SizedBox(
              height: 14.h,
            ),
            Container(
              height: 400,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ReuseAbleCard(text: AppStrings.sells2_Cars),
                  ReuseAbleCard(text: AppStrings.sells2_Bikes),
                  ReuseAbleCard(text: AppStrings.sells2_Bicycles),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
