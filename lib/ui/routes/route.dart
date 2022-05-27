import 'package:get/get.dart';
import 'package:peervendor/ui/views/authscreens/auth/authentication.dart';
import 'package:peervendor/ui/views/authscreens/auth/login/login_screen.dart';
import 'package:peervendor/ui/views/authscreens/auth/login/otp_screen.dart';
import 'package:peervendor/ui/views/authscreens/auth/login/success_screen.dart';
import 'package:peervendor/ui/views/authscreens/auth/registration/otpscreen.dart';
import 'package:peervendor/ui/views/authscreens/auth/registration/registration.dart';
import 'package:peervendor/ui/views/authscreens/auth/registration/success_screen.dart';
import 'package:peervendor/ui/views/authscreens/choose_langguage_screens.dart';
import 'package:peervendor/ui/views/authscreens/onboarding.dart';
import 'package:peervendor/ui/views/authscreens/splash_screens.dart';
import 'package:peervendor/ui/views/navpage/main_page.dart';
import 'package:peervendor/ui/views/navpage/sellscreen/chooseimage.dart';
import 'package:peervendor/ui/views/navpage/sellscreen/productdetails.dart';
import 'package:peervendor/ui/views/navpage/sellscreen/sell_screen.dart';
import 'package:peervendor/ui/views/navpage/sellscreen/sell_screen2.dart';
import 'package:peervendor/ui/views/navpage/sellscreen/sellsuccess.dart';

const String splash = "/spalash-screen";
const String chooselangguage = "/choose-langguage-screen";
const String onboarding = "/0nboarding-screen";
const String authenticaton = "/authenticaton-screen";
const String registration = "/registration-screen";
const String otp = "/otp-screen";
const String registration_success = "/registration-success-screen";
const String login = "/login-screen";
const String loginotp = "/login-otp-screen";
const String loginsuccess = "/login-success-screen";
const String mainpage = "/mainpage-screen";
const String sell = "/sell-screen";
const String sell2 = "/sell2-screen";
const String productdetails = "/productdetails-screen";
const String chooseimage = "/choose-image-screen";
const String sellsuccess = "/sell-success-screen";

List<GetPage> getpage = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: chooselangguage,
    page: () => ChooseLangguageScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: authenticaton,
    page: () => AuthenticationScreen(),
  ),
  GetPage(
    name: registration,
    page: () => RegistrationScreen(),
  ),
  GetPage(
    name: otp,
    page: () => RegistrationOtpScreen(),
  ),
  GetPage(
    name: registration_success,
    page: () => RegistrationSuccessScreen(),
  ),
  GetPage(
    name: login,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: loginotp,
    page: () => LoginOtpScreen(),
  ),
  GetPage(
    name: loginsuccess,
    page: () => LoginSuccessScreen(),
  ),
  GetPage(
    name: mainpage,
    page: () => MainPage(),
  ),
  GetPage(
    name: sell,
    page: () => SellScreen(),
  ),
  GetPage(
    name: sell2,
    page: () => SellScreen2(),
  ),
  GetPage(
    name: productdetails,
    page: () => ProductDetailsScreen(),
  ),
  GetPage(
    name: chooseimage,
    page: () => ChooseImageScreen(),
  ),
  GetPage(
    name: sellsuccess,
    page: () => SellSuccessScreen(),
  ),
];
