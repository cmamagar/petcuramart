import 'dart:async';
import 'package:get/get.dart';
import 'package:petcuramart/view/auth/login_screen.dart';

class SplashScreenController extends GetxController{
  void onInit(){
    Timer(const Duration(seconds: 3), () async {
      Get.offAll(()=> LoginScreen());
    });
    super.onInit();
  }
}