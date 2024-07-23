import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcuramart/view/screens/home_screen.dart';
import 'package:petcuramart/view/screens/order_screen.dart';
import 'package:petcuramart/view/screens/product_screen.dart';
import 'package:petcuramart/view/screens/profile_screen.dart';

class DashScreenController extends GetxController {
  final key = GlobalKey<ScaffoldState>();
  RxList<Widget> pages = RxList([
    HomeScreen(),
    OrderScreen(),
    ProductScreen(),
    ProfileScreen(),
  ]);

  RxInt currentIndex = RxInt(0);

  void onItemTapped(int index) {
    currentIndex.value = index;
  }
}
