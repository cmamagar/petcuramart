import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcuramart/utils/theme.dart';
import 'package:petcuramart/view/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: basicTheme(),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
      
      debugShowCheckedModeBanner: false,
    );
  }
}