import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_floating_text_field.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController fullNameSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  TextEditingController confirmPasswordSectionController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                                  height: 555.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 232.v,
                                                width: double.maxFinite,
                                                decoration: BoxDecoration(
                                                    color: appTheme
                                                        .deepPurple300
                                                        .withOpacity(0.62),
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            bottom:
                                                                Radius.circular(
                                                                    12.h))))),
                                        _buildFrameFiftySevenSection(context)
                                      ])),
                              SizedBox(height: 33.v),
                              Opacity(
                                  opacity: 0.5,
                                  child: Text("Sign Up with",
                                      style: CustomTextStyles
                                          .bodySmallPrimary12_2)),
                              SizedBox(height: 8.v),
                              _buildContinueWithGoogleButtonSection(context),
                              SizedBox(height: 63.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtHaveanaccount(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 97.h),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Have an account? ",
                                                    style: CustomTextStyles
                                                        .bodySmallff000000),
                                                TextSpan(
                                                    text: "Sign In Here",
                                                    style: CustomTextStyles
                                                        .bodySmallff7371e0)
                                              ]),
                                              textAlign: TextAlign.left)))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFullNameSection(BuildContext context) {
    return CustomFloatingTextField(
        controller: fullNameSectionController,
        labelText: "Full Name",
        labelStyle: CustomTextStyles.bodySmallGray7000112,
        hintText: "Full Name",
        suffix: IconButton(
            onPressed: () {},
            constraints:
                BoxConstraints(minHeight: 13.adaptSize, minWidth: 13.adaptSize),
            padding: EdgeInsets.all(0),
            icon: Container(
                width: 13.adaptSize,
                height: 13.adaptSize,
                decoration: BoxDecoration(
                    color: appTheme.green500,
                    borderRadius: BorderRadius.circular(6.h)),
                padding: EdgeInsets.all(3.h),
                child: CustomImageView(imagePath: ImageConstant.imgCheck))),
        suffixConstraints: BoxConstraints(maxHeight: 51.v),
        contentPadding: EdgeInsets.fromLTRB(23.h, 16.v, 23.h, 12.v));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return CustomFloatingTextField(
        controller: emailSectionController,
        labelText: "Email Address",
        labelStyle: CustomTextStyles.bodySmallCircularStdBoldGray70001,
        hintText: "Email Address",
        hintStyle: CustomTextStyles.bodySmallCircularStdBoldGray70001,
        textInputType: TextInputType.emailAddress,
        suffix: IconButton(
            onPressed: () {},
            constraints:
                BoxConstraints(minHeight: 13.adaptSize, minWidth: 13.adaptSize),
            padding: EdgeInsets.all(0),
            icon: Container(
                width: 13.adaptSize,
                height: 13.adaptSize,
                decoration: BoxDecoration(
                    color: appTheme.green500,
                    borderRadius: BorderRadius.circular(6.h)),
                padding: EdgeInsets.all(3.h),
                child: CustomImageView(imagePath: ImageConstant.imgCheck))),
        suffixConstraints: BoxConstraints(maxHeight: 51.v),
        contentPadding: EdgeInsets.fromLTRB(23.h, 17.v, 23.h, 11.v));
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return CustomFloatingTextField(
        controller: passwordSectionController,
        labelText: "Password",
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 13.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgVector, height: 13.v, width: 14.h)),
        suffixConstraints: BoxConstraints(maxHeight: 51.v));
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return CustomFloatingTextField(
        controller: confirmPasswordSectionController,
        labelText: "Confirm Password",
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "Confirm Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 13.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgVector, height: 13.v, width: 14.h)),
        suffixConstraints: BoxConstraints(maxHeight: 51.v));
  }

  /// Section Widget
  Widget _buildFrameFiftySevenSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 26.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text("Create an Account",
                      style: CustomTextStyles.titleMediumSFUIDisplayGray70001),
                  SizedBox(height: 19.v),
                  _buildFullNameSection(context),
                  SizedBox(height: 16.v),
                  _buildEmailSection(context),
                  SizedBox(height: 16.v),
                  _buildPasswordSection(context),
                  SizedBox(height: 16.v),
                  _buildConfirmPasswordSection(context),
                  SizedBox(height: 16.v),
                  GestureDetector(
                      onTap: () {
                        kl(context);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 10.v),
                          decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Text("Create Account",
                              style: CustomTextStyles.bodySmallGray70001)))
                ])));
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButtonSection(BuildContext context) {
    return CustomOutlinedButton(
        width: 257.h,
        text: "Continue withGoogle",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Navigates to the registeredSuccessfullyScreen when the action is triggered.
  kl(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registeredSuccessfullyScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtHaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
