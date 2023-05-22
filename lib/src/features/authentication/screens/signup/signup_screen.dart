import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pettie_petstore/src/common_widgets/form/form_header_widget.dart';

import 'package:pettie_petstore/src/constants/image_string.dart';

import 'package:pettie_petstore/src/constants/size.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';
import 'package:pettie_petstore/src/features/authentication/screens/signup/signup_form_widget.dart';

import '../login/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(pDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const FormHeaderWidget(
                  image: pWeclomeScreenImage,
                  title: signupTitle,
                  subTitle: signupSub,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                 const SignupFormWidget(),
                Column(
                  children:  [
                     const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: (){},
                      icon: const Image(image:AssetImage(pGoogleLogo), width: 20.0,), 
                      
                      
                      label: Text("Signin with google".toUpperCase()),),
                    ),
                //  15.38min
                  TextButton(  onPressed: () => Get.to(() => const LoginScreen()),
                   child:  Text.rich(
                    TextSpan(children:[
                      TextSpan(
                    text:alreadyAccount , style: Theme.of(context).textTheme.bodyMedium,
                    ),
  TextSpan(text:pLogin.toUpperCase()),
                    ]
                    ),
                    )
                    ,),
                  ],

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

