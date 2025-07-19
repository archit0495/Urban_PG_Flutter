import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_floating_text_field.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              SizedBox(
                                  height: 471.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        _buildResetPasswordStack(context),
                                        _buildForgotPasswordColumn(context)
                                      ])),
                              Spacer(),
                              Opacity(
                                  opacity: 0.5,
                                  child: Text("Sign In with",
                                      style: CustomTextStyles
                                          .bodySmallPrimary12_2)),
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
                                            style: CustomTextStyles
                                                .bodySmallff000000),
                                        TextSpan(
                                            text: "Sign up Here",
                                            style: CustomTextStyles
                                                .bodySmall9e8e71e0)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 40.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildResetPasswordStack(BuildContext context) {
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
  Widget _buildForgotPasswordColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 34.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 50.h),
                      child: Text("Forgot Password?",
                          style: CustomTextStyles.bodyLargePrimary))),
              SizedBox(height: 47.v),
              Text("Reset Password", style: CustomTextStyles.bodyLargePrimary),
              SizedBox(height: 19.v),
              CustomFloatingTextField(
                  controller: emailController,
                  labelText: "Enter Email Address",
                  labelStyle: CustomTextStyles.bodySmall12,
                  hintText: "Enter Email Address",
                  hintStyle: CustomTextStyles.bodySmall12,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  suffix: IconButton(
                      onPressed: () {},
                      constraints: BoxConstraints(
                          minHeight: 13.adaptSize, minWidth: 13.adaptSize),
                      padding: EdgeInsets.all(0),
                      icon: Container(
                          width: 13.adaptSize,
                          height: 13.adaptSize,
                          decoration: BoxDecoration(
                              color: appTheme.green500,
                              borderRadius: BorderRadius.circular(6.h)),
                          padding: EdgeInsets.all(3.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCheck))),
                  suffixConstraints: BoxConstraints(maxHeight: 51.v),
                  contentPadding: EdgeInsets.fromLTRB(16.h, 18.v, 16.h, 10.v)),
              SizedBox(height: 37.v),
              GestureDetector(
                  onTap: () {
                    navigateto(context);
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 10.v),
                      decoration: AppDecoration.fillDeepPurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Text("Send Code",
                          style: CustomTextStyles.bodySmallGray70001))),
              SizedBox(height: 16.v)
            ])));
  }

  /// Navigates to the verificationScreen when the action is triggered.
  navigateto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verificationScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtNewmembersign(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
