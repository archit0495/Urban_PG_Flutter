import 'package:flutter/material.dart';
import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_floating_text_field.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
                children: [
                  SizedBox(
                    height: 471.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildSignInForm(context),
                        _buildSignUpForm(context),
                      ],
                    ),
                  ),
                  Spacer(),
                  Opacity(
                    opacity: 0.5,
                    child: Text("Sign In with", style: CustomTextStyles.bodySmallPrimary12_2),
                  ),
                  SizedBox(height: 14.v),
                  CustomOutlinedButton(
                    width: 257.h,
                    text: "Continue with Google",
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 9.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGoogle,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.bodySmallGray70001,
                  ),
                  SizedBox(height: 72.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtNewmembersign(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "New Member? ", style: CustomTextStyles.bodySmallff000000),
                          TextSpan(text: "Sign up Here", style: CustomTextStyles.bodySmall9e8e71e0),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 40.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ... (unchanged parts)

  // Modify this function as follows
  Widget _buildSignInForm(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 138.h, vertical: 36.v),
        decoration: AppDecoration.fillDeepPurple
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
          children: [
            SizedBox(height: 61.v),
            Container(
              height: 98.adaptSize,
              width: 98.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v),
              decoration: AppDecoration.fillWhiteA
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder49),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 69.v,
                width: 61.h,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Modify this function as follows
  Widget _buildSignUpForm(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 31.h),
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 27.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
          children: [
            SizedBox(height: 6.v),
            Text("Sign In to Continue", style: CustomTextStyles.bodyLargePrimary),
            SizedBox(height: 25.v),
            // Use Flexible with FlexFit.loose
            Flexible(
              fit: FlexFit.loose,
              child: CustomFloatingTextField(
                controller: emailController,
                labelText: "Email Address",
                labelStyle: CustomTextStyles.bodySmall12,
                hintText: "Email Address",
                hintStyle: CustomTextStyles.bodySmall12,
                textInputType: TextInputType.emailAddress,
                suffix: IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(minHeight: 13.adaptSize, minWidth: 13.adaptSize),
                  padding: EdgeInsets.all(0),
                  icon: Container(
                    width: 13.adaptSize,
                    height: 13.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green500,
                      borderRadius: BorderRadius.circular(6.h),
                    ),
                    padding: EdgeInsets.all(3.h),
                    child: CustomImageView(imagePath: ImageConstant.imgCheck),
                  ),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 51.v),
                contentPadding: EdgeInsets.fromLTRB(16.h, 18.v, 16.h, 10.v),
              ),
            ),
            SizedBox(height: 14.v),
            // Use Flexible with FlexFit.loose
            Flexible(
              fit: FlexFit.loose,
              child: CustomFloatingTextField(
                controller: passwordController,
                labelText: "Password",
                labelStyle: theme.textTheme.bodyMedium!,
                hintText: "Password",
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 13.v,
                    width: 14.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 51.v),
              ),
            ),
            SizedBox(height: 33.v),
            GestureDetector(
              onTap: () {
                onTapHomePage(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
                decoration: AppDecoration.fillDeepPurple
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                child: Text("Log In", style: CustomTextStyles.bodySmallGray70001),
              ),
            ),
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerRight,
              child: Opacity(
                opacity: 0.5,
                child: GestureDetector(
                  onTap: () {
                    onTapTxtResetPassword(context);
                  },
                  child: Text("Reset Password", style: CustomTextStyles.bodySmallBigshotOnePrimary12_1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHomePage(BuildContext context) {
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
