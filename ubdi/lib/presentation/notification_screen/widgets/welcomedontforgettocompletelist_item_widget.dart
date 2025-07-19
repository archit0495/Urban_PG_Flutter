import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomedontforgettocompletelistItemWidget extends StatelessWidget {
  const WelcomedontforgettocompletelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      width: 313.h,
      text: "Welcome, Don’t forget to complete your personal info.",
      leftIcon: Container(
        padding: EdgeInsets.all(6.h),
        margin: EdgeInsets.only(right: 14.h),
        decoration: BoxDecoration(
          color: appTheme.indigo300,
          borderRadius: BorderRadius.circular(
            4.h,
          ),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.primary,
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgNotification42,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlue,
      buttonTextStyle: CustomTextStyles.bodySmallPrimary_2,
    );
  }
}
