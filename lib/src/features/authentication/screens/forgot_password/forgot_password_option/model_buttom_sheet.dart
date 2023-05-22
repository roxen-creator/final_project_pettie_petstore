import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/authentication/screens/forgot_password/forgot_password_phone/forgot_password_phone.dart';


import '../../../../../constants/size.dart';
import '../../../../../constants/string_manager.dart';
import '../forgot_password_mail/forgot_password_mai.dart';
import 'forgot_password_btn_widget.dart';
class ForgotPasswordScreen{
static Future<dynamic> buildShowModelButomSheet(BuildContext context) {
    return showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    builder: (context) => Container(
padding: const EdgeInsets.all(pDefaultSize),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(pForgotPasswordTitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.displayMedium,),
Text(pForgotPasswordSubTitle, style: Theme.of(context).textTheme.bodyMedium),
const SizedBox(height: 30.0,),
ForgotPasswordButtonWidget(
btnIcon: Icons.mail_outline_rounded,
title: "Email",
subTitle: pResetViaEmail,
onTap: () {
  Navigator.pop(context);
Get.to(()=> const ForgotPasswordMailScreen());
},


),
const SizedBox(height: 20.0,),

ForgotPasswordButtonWidget(

onTap: () {
Navigator.pop(context);
Get.to(()=> const ForgotPasswordPhone());
},
title: "Phone",
subTitle: pResetViaPhone,
btnIcon: Icons.mobile_friendly_rounded,





),
],
),


                    ),
                    
                  );
  }
}