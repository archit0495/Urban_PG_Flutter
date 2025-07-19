import 'package:anitha_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:anitha_s_application5/presentation/sign_up_screen/sign_up_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurple300.withOpacity(0.62),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 32.v),
              _buildOneColumn(context),
              SizedBox(height: 43.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v),
                decoration: AppDecoration.fillDeepPurple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapSignUp(context);
                  },
                  child: Text(
                    "Get Started",
                    style: CustomTextStyles.bodySmallGray70001,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 47.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder177,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 252.v,
            width: 226.h,
          ),
        ],
      ),
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }
}
