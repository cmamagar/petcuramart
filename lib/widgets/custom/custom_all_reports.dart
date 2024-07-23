import 'package:flutter/material.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/custom_text_styles.dart';

Widget ReportContainer({
  required String imagePath,
  required String price,
  required String name,
}) {
  return SizedBox(
    height: 127,
    width: 152,
    child: Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: AppColors.secondaryTextColor,
                blurRadius: 4,
                offset: Offset(1, 1))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  5), // Image border radius matching the container
              child: Image.asset(
                imagePath,
                height: 70,
                width: 70, // Width to match the container width
                fit: BoxFit.cover,
              ),
            ),
            Text(price,
                style: CustomTextStyles.f12W600(color: AppColors.textColor)),
            Text(name, style: CustomTextStyles.f10W400(color: AppColors.lGrey)),
          ],
        ),
      ),
    ),
  );
}

Widget OrderContainer({
  required String orderNumber,
  required String status,
  required String customerName,
  required String payable,
  required String orderDate,
  required String phoneNumber,
  required String paymentMethod,
}) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: AppColors.lGrey,
          offset: Offset(1, 1),
          blurRadius: 4,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order #$orderNumber", style: CustomTextStyles.f10W400(color: AppColors.textColor)),
                      Text(status, style: CustomTextStyles.f10W400(color: AppColors.primaryColor)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text("Customer: $customerName", style: CustomTextStyles.f10W400(color: AppColors.textColor)),
                  const SizedBox(height: 10),
                  Text("Payable: $payable", style: CustomTextStyles.f10W400(color: AppColors.textColor)),
                  const SizedBox(height: 10),
                  Text("Order Date: $orderDate", style: CustomTextStyles.f10W400(color: AppColors.textColor)),
                ],
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Phone: $phoneNumber", style: CustomTextStyles.f10W400(color: AppColors.textColor)),
                const SizedBox(height: 10),
                Text("Payment: $paymentMethod", style: CustomTextStyles.f10W400(color: AppColors.textColor)),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}