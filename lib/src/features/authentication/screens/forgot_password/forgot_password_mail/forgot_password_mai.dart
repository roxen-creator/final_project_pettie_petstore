

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/constants/size.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/string_manager.dart';
import '../forgot_password_otp/otp_screen.dart';
class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold
      (body : SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(pDefaultSize),
          child: Column(
            children:  [
              const SizedBox(height: pDefaultSize*4,),
      const FormHeaderWidget(
          image: pForgotPasswordImage,
          title:pForgotPassword,
          subTitle: pForgotPasswordEmailSubTitle,
          crossAxisAlignment: CrossAxisAlignment.center,
          heightBetwen: 20.0,
          textAlign:TextAlign.center,
      
      
      
        ),
        const SizedBox(height: pFormheight,),
        Form(child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text("Email"),
              hintText: "Enter E-Mail",
              prefixIcon: Icon(Icons.mail_outline_rounded),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
              Get.to(()=> const OTPScreen());



            }, 
            child: const Text("Next"))),
        ],))
            ],
          ),
        ),
      )),
    );
  }
}