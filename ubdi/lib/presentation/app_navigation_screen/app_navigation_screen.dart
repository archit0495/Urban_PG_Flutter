import 'package:anitha_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Loading",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loadingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Description",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.descriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Female PG - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.femalePgContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ColivingPG",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.colivingpgScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registered Successfully",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registeredSuccessfullyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "about-us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.helpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit_Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.bookScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add new Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Code",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.codeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recently-viewed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recentlyViewedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "New password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newPasswordScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
