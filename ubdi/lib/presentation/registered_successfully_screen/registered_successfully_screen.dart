import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:anitha_s_application5/widgets/custom_floating_text_field.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisteredSuccessfullyScreen extends StatelessWidget {
  RegisteredSuccessfullyScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  _buildRoomFinder(context),
                                  _buildSignInToContinue(context),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 56.h,
                                              right: 62.h,
                                              bottom: 40.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Text("Sign In with",
                                                        style: CustomTextStyles
                                                            .bodySmallPrimary12_2)),
                                                SizedBox(height: 14.v),
                                                CustomOutlinedButton(
                                                    text: "Continue withGoogle",
                                                    leftIcon: Container(
                                                        margin: EdgeInsets.only(
                                                            right: 10.h),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgGoogleAmber500,
                                                            height:
                                                                16.adaptSize,
                                                            width:
                                                                16.adaptSize))),
                                                SizedBox(height: 72.v),
                                                RichText(
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
                                                    textAlign: TextAlign.left)
                                              ]))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 31.h, vertical: 83.v),
                                          decoration:
                                              AppDecoration.fillDeepPurple,
                                          child: _buildRegisteredSuccessfully(
                                              context)))
                                ])))))));
  }

  /// Section Widget
  Widget _buildRoomFinder(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 119.h, vertical: 51.v),
            decoration: AppDecoration.fillDeepPurple
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Room Finder",
                      style: CustomTextStyles.headlineSmallAnticSlab),
                  SizedBox(height: 7.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text("Ultimate property finder",
                          style: CustomTextStyles
                              .bodySmallSFUIDisplayWhiteA70001)),
                  SizedBox(height: 77.v)
                ])));
  }

  /// Section Widget
  Widget _buildSignInToContinue(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 31.h, top: 157.v, right: 31.h),
            padding: EdgeInsets.all(28.h),
            decoration: AppDecoration.outlinePrimary2
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text("Sign In to Continue",
                      style: CustomTextStyles.bodyLargeAnticSlabGray70001),
                  SizedBox(height: 27.v),
                  CustomFloatingTextField(
                      controller: emailController,
                      labelText: "Email Address",
                      labelStyle: CustomTextStyles.bodySmallGray7000112,
                      hintText: "Email Address",
                      textInputType: TextInputType.emailAddress,
                      contentPadding:
                          EdgeInsets.fromLTRB(23.h, 17.v, 23.h, 11.v)),
                  SizedBox(height: 16.v),
                  CustomFloatingTextField(
                      controller: passwordController,
                      labelText: "Password",
                      labelStyle: theme.textTheme.bodyMedium!,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      suffix: Container(
                          margin: EdgeInsets.symmetric(horizontal: 19.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 13.v,
                              width: 14.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 51.v)),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      height: 36.v,
                      text: "Log In",
                      buttonStyle: CustomButtonStyles.fillDeepPurple,
                      buttonTextStyle: CustomTextStyles.bodySmallWhiteA7000112),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Opacity(
                          opacity: 0.5,
                          child: Text("Reset Password",
                              style: CustomTextStyles.bodySmallPrimary12_2)))
                ])));
  }

  /// Section Widget
  Widget _buildRegisteredSuccessfully(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 85.h, vertical: 14.v),
        decoration: AppDecoration.outlinePrimary2
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          Container(
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.all(4.h),
              decoration: AppDecoration.fillGreen
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheck,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center)),
          Opacity(
              opacity: 0.6,
              child: GestureDetector(
                  onTap: () {
                    nav(context);
                  },
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 5.h, top: 5.v, bottom: 4.v),
                      child: Text("Registered Successfully!",
                          style: CustomTextStyles.bodySmallPrimary))))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  nav(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
