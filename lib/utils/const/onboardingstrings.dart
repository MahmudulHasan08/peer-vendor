import 'package:peervendor/utils/const/appimg.dart';
import 'package:peervendor/utils/const/appstrings.dart';

class OnBoarding {
  final String title;
  final String subtitle;
  final String img;
  OnBoarding({required this.title, required this.subtitle, required this.img});
}

List<OnBoarding> onBoardingContents = [
  OnBoarding(
    title: AppStrings.onBoarding_Title1,
    subtitle: AppStrings.onBoarding_SubTitle,
    img: AppImg.slider1,
  ),
  OnBoarding(
    title: AppStrings.onBoarding_Title2,
    subtitle: AppStrings.onBoarding_SubTitle,
    img: AppImg.slider2,
  ),
  OnBoarding(
    title: AppStrings.onBoarding_Title3,
    subtitle: AppStrings.onBoarding_SubTitle,
    img: AppImg.slider3,
  ),
  OnBoarding(
    title: AppStrings.onBoarding_Title4,
    subtitle: AppStrings.onBoarding_SubTitle,
    img: AppImg.slider4,
  )
];
