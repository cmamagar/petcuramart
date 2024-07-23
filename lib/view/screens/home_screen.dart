import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcuramart/controller/home_screen_controller.dart';
import 'package:petcuramart/utils/colors.dart';
import 'package:petcuramart/utils/custom_text_styles.dart';
import 'package:petcuramart/utils/image_path.dart';
import 'package:petcuramart/widgets/custom/custom_all_reports.dart';


class HomeScreen extends StatelessWidget {
  final c = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Good morning",
                          style: CustomTextStyles.f16W600(
                              color: AppColors.textColor),
                        ),
                        SizedBox(width: 8),
                        Image.asset(ImagePath.waving_hand),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Seema Thapa",
                      style: CustomTextStyles.f14W400(color: AppColors.textColor),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(ImagePath.profile1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "This month",
                  style: CustomTextStyles.f16W600(
                      color: AppColors.textColor),
                ),
                Text(
                  "All Reports",
                  style: CustomTextStyles.f14W400(
                      color: AppColors.primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReportContainer(
                      imagePath: ImagePath.category1,
                      price: "Rs.2500.00",
                      name: "Gross Sales",
                    ),
                    ReportContainer(
                      imagePath: ImagePath.category2,
                      price: "100",
                      name: "Total Product",
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReportContainer(
                      imagePath: ImagePath.category3,
                      price: "Rs.30000",
                      name: "Earnings",
                    ),
                    ReportContainer(
                      imagePath: ImagePath.category4,
                      price: "1043",
                      name: "Total Orders",
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Orders",
                  style: CustomTextStyles.f16W600(
                      color: AppColors.textColor),
                ),
                Text(
                  "See All Orders",
                  style: CustomTextStyles.f14W400(
                      color: AppColors.primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 15),
            OrderContainer(
              orderNumber: "123456778",
              status: "Received",
              customerName: "Seema Thapa",
              payable: "4500",
              orderDate: "27/05/2024",
              phoneNumber: "9816133769",
              paymentMethod: "e-sewa",
            ),
          ],
        ),
      ),
    );
  }
}
