// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer' as developer;
import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/dashboard.dart';
import 'package:pettie_petstore/src/repository/exception/signup_email_password_faliure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

//variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const Dashboard());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar('Error', 'The provided phone number is not valid');
        } else {
          Get.snackbar('Error', 'Something went wrong. Try Again.');
        }
      },
    );
  }

  Future<bool> verfiyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
   try {
  await _auth.createUserWithEmailAndPassword(
      email: email, password: password);
  firebaseUser.value != null
      ? Get.offAll(() => const Dashboard())
      : Get.to(() => WelcomeScreen());
} on FirebaseAuthException catch (e) {
  final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
  developer.log('FIREBASE AUTH EXCEPTION - ${ex.messaage}', error: ex);
} catch (_) {}
const ex = SignUpWithEmailAndPasswordFailure();
developer.log('EXCEPTION - ${ex.messaage}', error: ex);
throw ex;
      }
  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    // ignore: empty_catches
    } on FirebaseAuthException {} catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
