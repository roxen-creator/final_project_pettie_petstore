import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/dashboard.dart';
import 'package:pettie_petstore/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find(); 


  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verfiyOTP(otp);
    isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }
}