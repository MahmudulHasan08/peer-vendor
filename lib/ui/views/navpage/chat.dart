import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendor/ui/styles/appstyles.dart';
import 'package:peervendor/utils/const/appstrings.dart';

import '../../../utils/const/appcolors.dart';
import '../../../utils/const/appimg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 45.h,left: 35.w,right: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.chat_all_users,
              style: AppStyles.font20w400,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  padding: EdgeInsets.all(10.w),
                  height: 60.h,
                  width: 275,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.backButtonColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 220.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText:
                            AppStrings.dashboardscreen_Search_Products,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.whiteColor,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.whiteColor,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(

                        height: 45.h,
                        width: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.black54,
                        ),
                        child: Image.asset(
                          AppImg.search,
                          height: 19.h,
                          width: 19.h,

                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 50.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF03A9F1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(child: Icon(Icons.add,color: AppColors.whiteColor,)),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 70,
              padding: EdgeInsets.all(15.w),
              child:Row(
                children: [
                  Image.asset(AppImg.image1,height: 40.h,width: 40.w,),
                  SizedBox(width: 20.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.chat_all_Bozenka_Malina,style: AppStyles.font15w400,),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(AppStrings.chat_all_Uploaded_file,style: AppStyles.font13Robotow300,),
                    ],
                  )
                ],
              ),
            ),

            Container(
              height: 70,
              padding: EdgeInsets.all(15.w),
              child:Row(
                children: [
                  Image.asset(AppImg.image2,height: 40.h,width: 40.w,),
                  SizedBox(width: 20.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.chat_all_Odeusz_Piotrowski,style: AppStyles.font15w400,),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(AppStrings.chat_all_will_do,style: AppStyles.font13Robotow300,),
                    ],
                  )
                ],
              ),
            ),

            Container(
              height: 70,
              padding: EdgeInsets.all(15.w),
              child:Row(
                children: [
                  Image.asset(AppImg.image3,height: 40.h,width: 40.w,),
                  SizedBox(width: 20.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.chat_all_Krysia_Eurydykao,style: AppStyles.font15w400,),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(AppStrings.chat_all_How_is,style: AppStyles.font13Robotow300,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
