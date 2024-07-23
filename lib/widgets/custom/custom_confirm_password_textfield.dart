import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petcuramart/utils/validator.dart';

import '../../utils/colors.dart';
import '../../utils/custom_text_styles.dart';
import '../../utils/image_path.dart';


class CustomConfirmPasswordField extends StatelessWidget {
  final String hint;
  final FocusNode? focusNode;
  final bool eye;
  final VoidCallback onEyeClick;
  final IconData? preIconPath;
  final Color? prefixIconColor; 
  final double? prefixIconSize;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final Function(String)? onSubmitted;
  final String? labelText;

  const CustomConfirmPasswordField({
    Key? key,
    required this.hint,
    required this.eye,
    required this.onEyeClick,
    required this.controller,
    required this.textInputAction,
    this.validator,
    this.onSubmitted,
    this.focusNode,
    this.labelText, this.preIconPath, this.prefixIconColor, this.prefixIconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: TextFormField(
        focusNode: focusNode,
        onFieldSubmitted: onSubmitted,
        controller: controller,
        validator: validator ?? Validators.checkPasswordField,
        obscureText: eye,
        maxLines: 1,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          label: labelText != null
              ? Text(
                  labelText ?? "",
                  style: CustomTextStyles.f16W400(
                    color: AppColors.primaryColor,
                  ),
                )
              : null,
              prefixIcon: (preIconPath != null)
            ? Icon(
                preIconPath,
                color: prefixIconColor, // Use prefixIconColor here
                size: prefixIconSize, // Use prefixIconSize here
              )
            : null,
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: AppColors.secondaryTextColor),
          ),
          focusedErrorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

            borderSide: BorderSide(width: 1, color: AppColors.errorColor),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

            borderSide: BorderSide(width: 1, color: AppColors.primaryColor),
          ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

            borderSide: BorderSide(width: 1, color: AppColors.errorColor),
          ),
          suffixIcon: IconButton(
            onPressed: onEyeClick,
            icon: (eye)
                ? SvgPicture.asset(
                    ImagePath.eyeOff,
                    height: 16,
                    colorFilter: const ColorFilter.mode(
                        AppColors.backGroundDark, BlendMode.srcIn),
                    fit: BoxFit.scaleDown,
                  )
                : SvgPicture.asset(
                    ImagePath.eye,
                    height: 12,
                    colorFilter: ColorFilter.mode(
                        AppColors.backGroundDark.withOpacity(0.5),
                        BlendMode.srcIn),
                    fit: BoxFit.scaleDown,
                  ),
          ),
          errorStyle: const TextStyle(fontSize: 10),
          hintText: hint,
          hintStyle:
              CustomTextStyles.f16W400(color: AppColors.secondaryTextColor),
        ),
        style: CustomTextStyles.f16W400(),
      ),
    );
  }
}
