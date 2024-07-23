import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool passwordObscure1 = true.obs;
  RxBool passwordObscure2 = true.obs;

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneNoController = TextEditingController();

  RxBool isChecked = false.obs;
  void onEyeCLickPassword() {
    passwordObscure1.value = !passwordObscure1.value;
  }
  void onEyeCLickConfirmPassword() {
    passwordObscure2.value = !passwordObscure2.value;
  }
}
