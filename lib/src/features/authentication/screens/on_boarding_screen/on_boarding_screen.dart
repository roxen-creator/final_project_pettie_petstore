// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pettie_petstore/src/features/authentication/screens/welcome/welcome_screen.dart';
import '../../controllers/on_boarding_controller.dart';

import '../../../../constants/color_manager.dart';
import '../../../../constants/string_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
          ),
          Obx(() {
            if (obcontroller.isLastPage) {
              return Positioned(
                bottom: 60.0,
                child: OutlinedButton(
                   onPressed: () => Get.to(() => const WelcomeScreen()),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    foregroundColor: Colors.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      color: tDarkColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
              child: const Text(
                skip,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xFFfbb6b6),
                  dotHeight: 5.0,
                ),
                count: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
