import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcuramart/controller/auth/verification_screen_controller.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/custom_text_styles.dart';
import 'package:petcuramart/utils/image_path.dart';
import 'package:petcuramart/view/screens/dash_screen.dart';
import 'package:petcuramart/widgets/custom/elevated_button.dart';
import 'package:pinput/pinput.dart';

class VerificationCodeScreen extends StatelessWidget {
  final c = Get.put(VerificationScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.backGroundColor,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text("Back",
            style: CustomTextStyles.f16W600(color: AppColors.textColor)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Adjusted height dynamically
              Image.asset(ImagePath.otp, width: 100, height: 100), // Adjusted size
              const SizedBox(height: 15),
              Text(
                "OTP Verification",
                style: CustomTextStyles.f32W600(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Thank you for registering with us. Please type the OTP as shared on your email address xxx@gmail.com",
                textAlign: TextAlign.center,
                style: CustomTextStyles.f14W400(color: AppColors.lGrey),
              ),
              const SizedBox(height: 20),
              Pinput(
                controller: c.pinController,
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 40,
                  height: 40,
                  textStyle: CustomTextStyles.f24W600(color: AppColors.textColor),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lGrey),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 40,
                  height: 40,
                  textStyle: CustomTextStyles.f14W400(color: AppColors.textColor),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor, width: 0.6),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                submittedPinTheme: PinTheme(
                  width: 40,
                  height: 40,
                  textStyle: CustomTextStyles.f16W400(color: AppColors.textColor),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OTP not received?",
                    style: CustomTextStyles.f16W400(color: AppColors.lGrey),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      // Implement resend OTP logic
                    },
                    child: Text(
                      "RESEND",
                      style: CustomTextStyles.f16W400(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomElevatedButton(
          title: "Submit",
          onTap: () {
            Get.offAll(() => DashScreen());
            // Add submit action
          },
        ),
      ),
    );
  }
}
