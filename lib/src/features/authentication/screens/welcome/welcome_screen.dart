import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/constants/color_manager.dart';

import 'package:pettie_petstore/src/constants/image_string.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';

import '../../../../constants/size.dart';
import '../login/login_screen.dart';
import '../signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? cSecondaryColor : cPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(pDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage(pWeclomeScreenImage),
                height: height * 0.5),
            Column(
              children: [
                Text(
                  pWelcomeText,
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                Text(
                  pWelcomeSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: Text(pLogin.toUpperCase()),
                )),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const SignupScreen()) ,
                    child: Text(pSingup.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
