import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:anitha_s_application5/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 471.v,
                      width: double.maxFinite,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            _buildColumnOne(context),
                            _buildColumnTwo(context)
                          ])),
                  Spacer(),
                  Opacity(
                      opacity: 0.5,
                      child: Text("Sign In with",
                          style: CustomTextStyles.bodySmallPrimary12_2)),
                  SizedBox(height: 14.v),
                  CustomOutlinedButton(
                      width: 257.h,
                      text: "Continue with Google",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 9.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGoogle,
                              height: 16.adaptSize,
                              width: 16.adaptSize))),
                  SizedBox(height: 72.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtNewmembersign(context);
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "New Member? ",
                                style: CustomTextStyles.bodySmallff000000),
                            TextSpan(
                                text: "Sign up Here",
                                style: CustomTextStyles.bodySmall9e8e71e0)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 40.v)
                ]))));
  }

  /// Section Widget
  Widget _buildColumnOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 138.h, vertical: 36.v),
            decoration: AppDecoration.fillDeepPurple
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 61.v),
              Container(
                  height: 98.adaptSize,
                  width: 98.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v),
                  decoration: AppDecoration.fillWhiteA
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder49),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 69.v,
                      width: 61.h,
                      alignment: Alignment.center))
            ])));
  }

  /// Section Widget
  Widget _buildColumnTwo(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 32.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text("Verification",
                          style: CustomTextStyles.bodyLargePrimary)),
                  SizedBox(height: 24.v),
                  Text("Enter verification code",
                      style: CustomTextStyles.bodySmall12),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 35.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 36.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            navigatetoresend(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(right: 28.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "If yo",
                                        style:
                                            CustomTextStyles.bodySmallff000000),
                                    TextSpan(
                                        text: "u",
                                        style:
                                            CustomTextStyles.bodySmallff000000),
                                    TextSpan(
                                        text: " didn’t receive a code, ",
                                        style:
                                            CustomTextStyles.bodySmallff000000),
                                    TextSpan(
                                        text: "Resend",
                                        style:
                                            CustomTextStyles.bodySmallffff4b1f),
                                    TextSpan(text: " ")
                                  ]),
                                  textAlign: TextAlign.left)))),
                  SizedBox(height: 18.v),
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapConfirm(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),
                              decoration: AppDecoration.fillDeepPurple.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3),
                              child: Text("Confirm",
                                  style:
                                      CustomTextStyles.bodySmallGray70001)))),
                  SizedBox(height: 18.v)
                ])));
  }

  /// Navigates to the codeScreen when the action is triggered.
  navigatetoresend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.codeScreen);
  }

  /// Navigates to the newPasswordScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newPasswordScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtNewmembersign(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
