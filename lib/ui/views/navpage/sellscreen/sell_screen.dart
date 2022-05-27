import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/text.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

import '../../../../utils/const/appcolors.dart';
import '../../../widgets/appbar.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: titleAppBar(AppStrings.sell),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.mainColor,
            onPressed: () {
              Get.toNamed(sell2);
            },
            child: Icon(Icons.arrow_forward_ios_outlined),
          ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.sell_mysells_Choose_Category,
              style: AppStyles.sellchoosecategoryStyles,
            ),
            SizedBox(height: 14.h,),
            Container(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                  itemBuilder: (_,index){
                return Card(
                  elevation: 0.0,
                  child: ListTile(
                    leading: Image.asset(AppImg.circle),
                    title: SmallText(text: AppStrings.sell_mysells_Cars_Bikes_Bicycles),
                  ),
                );
              }),
            )

          ],
        ),
      ),
    ));
  }
}
