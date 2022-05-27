import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/views/navpage/profileview.dart';
import 'package:peervendor/ui/widgets/button.dart';
import 'package:peervendor/ui/widgets/dialog.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';
import 'package:get/get.dart';

class DashboardWithProduct extends StatelessWidget {
  const DashboardWithProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              collapsedHeight: 200.h,

              flexibleSpace: ProfileView(),
            )
          ];
        }, body: Padding(
          padding:  EdgeInsets.all(20.w),
          child: Stack(
            children: [
              Expanded(
                child:  GridView.builder(
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 30.h,
                      childAspectRatio:170.w/220.h,
                    ),
                    itemBuilder: (_, index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: 50.h),
                            child: Container(

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: AppColors.whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 30),
                                      blurRadius: 60.r,
                                      spreadRadius: 0.0,
                                      color: Color(0xFF393939).withOpacity(0.1),
                                    )
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: -10.h,
                            left: 30.w,
                            child: Image.asset(
                              AppImg.redwatch,
                              height: 150.h,
                              width: 145.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 70.h,
                            left: 20.w,
                            child: Text(AppStrings.my_Ads_watch_name,style: AppStyles.watchnameStyle,),
                          ),
                          Positioned(
                            bottom: 45.h,
                            left: 20.w,
                            child: Text(AppStrings.my_Ads_series,style: AppStyles.myaddSeriesStyle,),
                          ),
                          Positioned(
                            bottom: 15.h,
                            left: 20.w,
                            child: Text(AppStrings.my_Ads_prices,style: AppStyles.myaddPriceStyle,),
                          ),

                        ],
                      );
                    }),
              ),
              Positioned(
                bottom: 100.h,
                right: 10.w,
                child: InkWell(
                  onTap: () {
                   DialogHomeScreen(context);
                  },
                  child: Container(
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImg.headphone),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(45.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ))
      ),
    );
  }
}
