import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:petcuramart/controller/auth/register_screen_controller.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/custom_text_styles.dart';
import 'package:petcuramart/utils/validator.dart';
import 'package:petcuramart/view/auth/login_screen.dart';
import 'package:petcuramart/view/auth/verification_code_screen.dart';
import 'package:petcuramart/widgets/custom/custom_confirm_password_textfield.dart';
import 'package:petcuramart/widgets/custom/custom_password_textfield.dart';
import 'package:petcuramart/widgets/custom/custom_textfield.dart';
import 'package:petcuramart/widgets/custom/elevated_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final c = Get.put(RegisterScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              Form(
                  key: c.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Sign Up",
                          style: CustomTextStyles.f32W600(),
                        ),
                      ),
                      SizedBox(height: 5),
                      Center(
                        child: Text(
                          "Create your account",
                          style: CustomTextStyles.f14W400(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        validator: Validators.checkFieldEmpty,
                        controller: c.fullNameController,
                        hint: "Full Name",
                        preIconPath: Icons.person,
                        prefixIconColor: AppColors.lGrey,
                        prefixIconSize: 22,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        validator: Validators.checkEmailField,
                        controller: c.emailController,
                        hint: "Email",
                        preIconPath: Icons.email,
                        prefixIconColor: AppColors.lGrey,
                        prefixIconSize: 22,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        validator: Validators.checkAddressField,
                        controller: c.addressController,
                        hint: "Address",
                        preIconPath: Icons.home,
                        prefixIconColor: AppColors.lGrey,
                        prefixIconSize: 22,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      IntlPhoneField(
                        controller: c.phoneNoController,
                        decoration: InputDecoration(
                          hintText: "Enter Phone No",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.secondaryTextColor),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.errorColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.primaryColor),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.errorColor),
                          ),
                          hintStyle: CustomTextStyles.f16W400(
                              color: AppColors.secondaryTextColor),
                        ),
                        style: CustomTextStyles.f16W400(
                          color: (AppColors.textColor),
                        ),
                        dropdownTextStyle: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        initialCountryCode: 'NP',
                        showDropdownIcon: false,
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                      Obx(
                        () => CustomPasswordField(
                          validator: Validators.checkPasswordField,
                          hint: "Password",
                          eye: c.passwordObscure1.value,
                          onEyeClick: c.onEyeCLickPassword,
                          controller: c.passwordController,
                          preIconPath: Icons.password,
                          prefixIconColor: AppColors.lGrey,
                          prefixIconSize: 22,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(
                        () => CustomConfirmPasswordField(
                          validator: Validators.checkPasswordField,
                          hint: "Confirm Password",
                          eye: c.passwordObscure2.value,
                          onEyeClick: c.onEyeCLickConfirmPassword,
                          controller: c.confirmPasswordController,
                          preIconPath: Icons.password,
                          prefixIconColor: AppColors.lGrey,
                          prefixIconSize: 22,
                          textInputAction: TextInputAction.done,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: c.isChecked.value,
                      onChanged: (bool? value) {
                        c.isChecked.value = value!;
                      },
                    ),
                    Text(
                      "I agree with the privacy policy",
                      style: CustomTextStyles.f14W400(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                  title: "Register",
                  onTap: () {
                    Get.to(() =>  VerificationCodeScreen());
                  }),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: CustomTextStyles.f14W400()),
                  TextButton(
                      onPressed: () {
                        Get.offAll(() => LoginScreen());
                      },
                      child: Text(
                        "Login",
                        style: CustomTextStyles.f14W400(
                            color: AppColors.primaryColor),
                      )),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
