import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../models/on_boarding_model.dart';
import '../../../constants/image_string.dart';
import '../../../constants/color_manager.dart';
import '../../../constants/string_manager.dart';
import '../screens/on_boarding_screen/widgets/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingScreenWidget(
      model: OnBoardingModel(
        image: onBoardingS1,
        title: onBoardingTitle1,
        subTitle: onBoardingSubtitle1,
        counterText: onBoardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnboardingScreenWidget(
      model: OnBoardingModel(
        image: onBoardingS2,
        title: onBoardingTitle2,
        subTitle: onBoardingSubtitle2,
        counterText: onBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnboardingScreenWidget(
      model: OnBoardingModel(
        image: onBoardingS3,
        title: onBoardingtitle3,
        subTitle: onBoardingSubtitle3,
        counterText: onBoardingCounter3,
        bgColor: tOnboardingPage3Color,
      ),
    )
  ];
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
 bool get isLastPage => currentPage.value == pages.length - 1;

  skip() => controller.jumpToPage(page: 2);
  

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
