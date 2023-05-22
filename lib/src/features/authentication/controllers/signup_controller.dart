import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:pettie_petstore/src/repository/authentication_repository/authentication_repository.dart';
import 'package:pettie_petstore/src/repository/user_repository.dart/user_repository.dart';

import '../models/user_model.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
