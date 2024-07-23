import 'package:flutter/material.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/custom_text_styles.dart';


Widget CustomCategoryContainer({required String imagePath, required String categoryName}) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 72,
      height: 75,
      decoration: BoxDecoration(
        color: AppColors.Categories,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 53, height: 53),
          Text(
            categoryName,
            style: CustomTextStyles.f10W400(
                color: AppColors.textColor),
          ),
        ],
      ),
    ),
  );
}