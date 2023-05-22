import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/dashboard.dart';



import '../../../../constants/string_manager.dart';
import '../forgot_password/forgot_password_option/model_buttom_sheet.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: 'Email',
                hintText: 'Enter Email',
               
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_sharp),
                labelText: 'Password',
                hintText: 'Enter password',
                
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ForgotPasswordScreen.buildShowModelButomSheet(context);
                  },
                  child: const Text('Forgot Password?'),
                )),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  
                  onPressed: () {
Get.to(()=>const Dashboard());


                  },
                  child: Text(
                    pLogin.toUpperCase(),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  
}


