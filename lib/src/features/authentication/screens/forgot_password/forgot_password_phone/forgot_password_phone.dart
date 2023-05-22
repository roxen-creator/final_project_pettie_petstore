
import 'package:flutter/material.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/string_manager.dart';


class ForgotPasswordPhone extends StatelessWidget {
  const ForgotPasswordPhone({super.key});

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
          subTitle: pForgotPasswordPhoneSubTitle,
          crossAxisAlignment: CrossAxisAlignment.center,
          heightBetwen: 20.0,
          textAlign:TextAlign.center,
      
      
      
        ),
        const SizedBox(height: pFormheight,),
        Form(child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text("Phone"),
              hintText: "Enter Phone No",
              prefixIcon: Icon(Icons.phone_android_outlined),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: const Text("Next"))),
        ],))
            ],
          ),
        ),
      )),
    );
  }
  }
