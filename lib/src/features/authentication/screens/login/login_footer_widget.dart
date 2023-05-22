import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pettie_petstore/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/string_manager.dart';

class LoginFooterWIdget extends StatelessWidget {
  const LoginFooterWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Text(
          "OR",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(pGoogleLogo),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text("Sign with google"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () => Get.to(() => const SignupScreen()),
          child:  Text.rich(TextSpan(
              text: donthaveaccount,
              style: Theme.of(context).textTheme.bodyMedium,
              children: const [
                TextSpan(
                  text: pSingup,
                  style: TextStyle(color: Colors.blue),
                ),
              ])),
        ),
      ],
    );
  }
}
