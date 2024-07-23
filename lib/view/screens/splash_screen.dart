import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcuramart/controller/splash_screen_controller.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/image_path.dart';
class SplashScreen extends StatelessWidget {
  final c = Get.put(SplashScreenController());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(ImagePath.logo),
             CircularProgressIndicator(color: AppColors.primaryColor,),
          ],
        ),
      ),
    );
  }
}




