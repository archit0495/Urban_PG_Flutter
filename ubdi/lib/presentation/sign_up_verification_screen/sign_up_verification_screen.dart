import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:anitha_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpVerificationScreen extends StatelessWidget {
  SignUpVerificationScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

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
                                  height: 472.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        _buildWidgetColumn(context),
                                        _buildFrameEightyThreeColumn(context)
                                      ])),
                              SizedBox(height: 93.v),
                              Opacity(
                                  opacity: 0.5,
                                  child: Text("Sign In with",
                                      style: CustomTextStyles
                                          .bodySmallPrimary12_2)),
                              SizedBox(height: 17.v),
                              CustomOutlinedButton(
                                  width: 257.h,
                                  text: "Continue with Google",
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 9.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGoogle,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize))),
                              SizedBox(height: 78.v),
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
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildWidgetColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 138.h, vertical: 37.v),
            decoration: AppDecoration.fillDeepPurple
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 60.v),
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
  Widget _buildFrameEightyThreeColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 26.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 6.v),
              Text("Sign In to Continue",
                  style: CustomTextStyles.bodyLargePrimary),
              SizedBox(height: 26.v),
              SizedBox(
                  height: 51.v,
                  width: 252.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: EdgeInsets.only(top: 7.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 11.h, vertical: 10.v),
                            decoration: AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 15.v,
                                      width: 110.h,
                                      margin:
                                          EdgeInsets.only(left: 5.h, top: 6.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("Umetale@gmail.com",
                                                    style: CustomTextStyles
                                                        .bodySmall12)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("Umetale@gmail.com",
                                                    style: CustomTextStyles
                                                        .bodySmall12))
                                          ])),
                                  Container(
                                      height: 13.adaptSize,
                                      width: 13.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 3.v, bottom: 4.v),
                                      padding: EdgeInsets.all(3.h),
                                      decoration: AppDecoration.fillGreen
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgCheck,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          alignment: Alignment.center))
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: 90.h,
                            margin: EdgeInsets.only(left: 11.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.h, vertical: 1.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Text("Email Address",
                                style: CustomTextStyles.bodySmallPrimary12_3)))
                  ])),
              SizedBox(height: 14.v),
              CustomTextFormField(
                  controller: passwordController,
                  hintText: "**********",
                  hintStyle: CustomTextStyles.bodySmallCircularStdBold,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 11.h, 15.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 13.v,
                          width: 14.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 51.v),
                  obscureText: true,
                  contentPadding:
                      EdgeInsets.only(left: 18.h, top: 15.v, bottom: 15.v)),
              SizedBox(height: 8.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("Password didn’t Match!",
                          style: CustomTextStyles.bodySmallRed500))),
              SizedBox(height: 12.v),
              GestureDetector(
                  onTap: () {
                    onTapHomeScreen(context);
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 10.v),
                      decoration: AppDecoration.fillDeepPurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Text("Log In",
                          style: CustomTextStyles.bodySmallGray70001))),
              SizedBox(height: 9.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: 15.v,
                      width: 83.h,
                      child: Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 15.v,
                              width: 83.h,
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Opacity(
                                            opacity: 0.5,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtResetPassword(
                                                      context);
                                                },
                                                child: Text("Reset Password",
                                                    style: CustomTextStyles
                                                        .bodySmallBigshotOneOnSecondaryContainer)))
                                      ]))))))
            ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHomeScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapTxtResetPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtNewmembersign(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
