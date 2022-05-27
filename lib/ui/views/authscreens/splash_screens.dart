import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/views/authscreens/choose_langguage_screens.dart';
import 'package:peervendor/utils/const/appcolors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    Timer(Duration(seconds: 3), (){
      Get.toNamed(chooselangguage);
    });
   super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Container(
          height: 176,
          width: 176,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/peer_vendors.png"),
              fit: BoxFit.cover,
            )
          ),
        ),
      ),
    ));
  }
}
