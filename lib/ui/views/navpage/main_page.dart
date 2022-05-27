import 'package:flutter/material.dart';
import 'package:peervendor/ui/views/navpage/account.dart';
import 'package:peervendor/ui/views/navpage/chat.dart';
import 'package:peervendor/ui/views/navpage/dashboardwithproduct.dart';
import 'package:peervendor/ui/views/navpage/home.dart';
import 'package:peervendor/ui/views/navpage/myadds.dart';
import 'package:peervendor/utils/const/appcolors.dart';

import '../../routes/route.dart';
import '../../widgets/tab_bar_material_widget.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isColor = false;
  int index = 0;

final Pages = [DashboardWithProduct(),MyAddsPage(),ChatPage(),AccountPage()];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Pages[index],
        bottomNavigationBar: TabBarMaterialWidget(
          index:index,
          onChangedTab:onChangedTab,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.whiteColor,
          child: Icon(Icons.add,color: isColor==false?AppColors.backButtonColor:AppColors.mainColor,),
          onPressed: () {
            Get.toNamed(sell);
            setState((){
              isColor =true;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  void onChangedTab(int index) {
    setState((){
      this.index = index;
    });

  }

}
