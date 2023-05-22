import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pettie_petstore/src/features/authentication/controllers/signup_controller.dart';
import 'package:pettie_petstore/src/features/authentication/models/user_model.dart';


import '../../../../constants/string_manager.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    // ignore: no_leading_underscores_for_local_identifiers
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  controller: controller.fullName,
                  decoration: const InputDecoration(
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person_rounded),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: controller.email,
                  decoration: const InputDecoration(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email_outlined),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: controller.phoneNo,
                  decoration: const InputDecoration(
                    label: Text("Phone"),
                    prefixIcon: Icon(Icons.phone_android_outlined),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: controller.password,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.fingerprint_outlined),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                          final user = UserModel(
                            email: controller.email.text.trim(),
                            password: controller.password.text.trim(),
                            fullName: controller.fullName.text.trim(),
                            phoneNo: controller.phoneNo.text.trim(),
                          );

                          SignUpController.instance.createUser(user);
                        }
                      },
                      child: const Text(pSingup)))
            ],
          )),
    );
  }
}
