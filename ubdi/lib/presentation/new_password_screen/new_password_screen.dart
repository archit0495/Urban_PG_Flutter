import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_floating_text_field.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                                  height: 516.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        _buildNewPasswordSection(context),
                                        _buildCreateNewPasswordSection(context)
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
  Widget _buildNewPasswordSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 138.h, vertical: 81.v),
            decoration: AppDecoration.fillDeepPurple
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 16.v),
                  Container(
                      height: 98.adaptSize,
                      width: 98.adaptSize,
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 14.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder49),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgImage2,
                          height: 69.v,
                          width: 61.h,
                          alignment: Alignment.center))
                ])));
  }

  /// Section Widget
  Widget _buildCreateNewPasswordSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 32.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("Create New Password",
                  style: CustomTextStyles.bodyLargePrimary),
              SizedBox(height: 26.v),
              CustomFloatingTextField(
                  controller: newpasswordController,
                  labelText: "Enter New Password",
                  labelStyle: theme.textTheme.bodyMedium!,
                  hintText: "Enter New Password",
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffix: Container(
                      margin: EdgeInsets.symmetric(horizontal: 11.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 13.v,
                          width: 14.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 51.v)),
              SizedBox(height: 14.v),
              CustomFloatingTextField(
                  controller: confirmpasswordController,
                  labelText: "Confirm Password",
                  labelStyle: theme.textTheme.bodyMedium!,
                  hintText: "Confirm Password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffix: Container(
                      margin: EdgeInsets.symmetric(horizontal: 11.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 13.v,
                          width: 14.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 51.v)),
              SizedBox(height: 33.v),
              GestureDetector(
                  onTap: () {
                    k(context);
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 10.v),
                      decoration: AppDecoration.fillDeepPurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Text("Create",
                          style: CustomTextStyles.bodySmallGray70001))),
              SizedBox(height: 18.v)
            ])));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  k(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtNewmembersign(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
