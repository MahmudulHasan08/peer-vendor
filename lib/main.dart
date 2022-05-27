import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peervendor/ui/routes/route.dart';
import 'package:peervendor/ui/views/authscreens/splash_screens.dart';
import 'package:peervendor/ui/views/navpage/main_page.dart';
import 'package:peervendor/utils/const/appcolors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_,child){
          return GetMaterialApp(
            getPages: getpage,
            initialRoute: splash,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.backgroundColor,
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.apply(),
              ),
              primarySwatch: Colors.blue,
            ),
            home:  SplashScreen(),
          );
        },

    );
  }
}


