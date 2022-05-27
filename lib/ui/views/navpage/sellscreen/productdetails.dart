import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/appbar.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/ui/widgets/textfield.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appstrings.dart';

import '../../../routes/route.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleAppBar(AppStrings.product_Details),
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            Text(
              AppStrings.product_Details_complete_fileds_valid,
              style: AppStyles.font20w400,
            ),
            SizedBox(
              height: 25.h,
            ),
            ProductDetailedtextField(
                text: AppStrings.product_Details_product_Title),
            SizedBox(
              height: 17.h,
            ),
            ProductDetailedBigtextField(
                text: AppStrings.product_Details_product_description),
            SizedBox(
              height: 17.h,
            ),
            ProductDetailedtextField(text: AppStrings.product_Details_price),
            SizedBox(
              height: 17.h,
            ),
            ProductDetailedtextField(
                text: AppStrings.product_Details_where_advertise),
            SizedBox(
              height: 17.h,
            ),
            ProductDetailedtextField(text: AppStrings.product_Details_location),
            SizedBox(
              height: 100.h,
            ),
            ReuseAbleButton(
              text: AppStrings.product_Details_button_continue,
              onpress: () => Get.toNamed(chooseimage),
            ),
          ],
        ),
      ),
    ));
  }
}
