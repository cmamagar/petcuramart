
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool passwordObscure = true.obs;
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  RxBool isChecked = false.obs;
  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
}

}



