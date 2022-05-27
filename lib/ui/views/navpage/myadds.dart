import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/ui/widgets/dialog.dart';
import 'package:peervendor/utils/const/appcolors.dart';
import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

class MyAddsPage extends StatefulWidget {
  const MyAddsPage({Key? key}) : super(key: key);

  @override
  State<MyAddsPage> createState() => _MyAddsPageState();
}

class _MyAddsPageState extends State<MyAddsPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.my_Ads,style: AppStyles.appbarStyle,),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10.h,
          left: 20.w,

        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                            fontSize: 18.sp,
                          ),
                          unselectedLabelColor: Colors.grey,
                          controller: _tabController,
                          tabs: [
                            Tab(
                              icon: Icon(Icons.shop_outlined),
                              text: "My Adds",
                            ),
                            Tab(
                              icon: Icon(Icons.favorite_border_outlined),
                              text: "My Favourites",
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 600.h,
                        child: TabBarView(controller: _tabController, children: [
                          GridView.builder(
                              itemCount: 12,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 30,
                                childAspectRatio: 170.w/220.h,
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
                          Container(
                            color: Colors.grey[200],
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 10,
                                itemBuilder: (_,index){
                              return Card(
                                child: ListTile(
                                  leading: Icon(Icons.add_chart,color: AppColors.mainColor,),
                                  title: Text(AppStrings.my_Ads_watch_name,style: AppStyles.watchnameStyle,),
                                  subtitle: Text(AppStrings.my_Ads_series,style: AppStyles.myaddSeriesStyle,),
                                  trailing: Text(AppStrings.my_Ads_prices,style: AppStyles.myaddPriceStyle,),
                                ),
                              );
                            }),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 100.h,
                right: 25.w,
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
        ),
      ),
    );
  }
}
