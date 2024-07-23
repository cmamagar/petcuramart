import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcuramart/controller/auth/login_screen_controller.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/custom_text_styles.dart';
import 'package:petcuramart/utils/validator.dart';
import 'package:petcuramart/view/auth/register_screen.dart';
import 'package:petcuramart/view/screens/dash_screen.dart';
import 'package:petcuramart/widgets/custom/custom_password_textfield.dart';
import 'package:petcuramart/widgets/custom/custom_textfield.dart';
import 'package:petcuramart/widgets/custom/elevated_button.dart';

class LoginScreen extends StatelessWidget {
  final LoginScreenController c = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: c.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            SizedBox(height: 50),
                            Text(
                              "Welcome Back",
                              style: CustomTextStyles.f32W600(),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Enter your credentials to login",
                              style: CustomTextStyles.f14W400(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35),

                      CustomTextField(
                        validator: Validators.checkEmailField,
                        controller: c.emailController,
                        hint: "Email",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        preIconPath: Icons.email,
                        prefixIconColor: AppColors.lGrey,
                        prefixIconSize: 22,
                      ),

                      SizedBox(height: 20),
                      Obx(
                        () => CustomPasswordField(
                          validator: Validators.checkPasswordField,
                          hint: "Password",
                          eye: c.passwordObscure.value,
                          onEyeClick: c.onEyeCLick,
                          controller: c.passwordController,
                          preIconPath: Icons.password,
                          prefixIconColor: AppColors.lGrey,
                          prefixIconSize: 22,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigate to ForgotPasswordScreen
                      },
                      child: Text(
                        "Forget Password?",
                        style:
                            TextStyle(color: Colors.black), // Change text color
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),

                CustomElevatedButton(
                  title: "Login",
                  onTap: () {
                    // if (c.formKey.currentState!.validate()) {
                    //   CustomSnackBar.success(
                    //       title: "Login ", message: "Login Successful");
                    //   Get.offAll(() => DashScreen());
                    // }

                    Get.offAll(() => DashScreen());
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: CustomTextStyles.f14W400()),
                    TextButton(
                      onPressed: () {
                        Get.offAll(() => RegisterScreen());
                      },
                      child: Text(
                        "Register",
                        style: CustomTextStyles.f14W400(
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
