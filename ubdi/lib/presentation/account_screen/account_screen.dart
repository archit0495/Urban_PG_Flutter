import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:anitha_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [_buildAppBar(context), _buildAccount(context)])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineIndigo300
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 222.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomAppBar(
                    height: 168.v,
                    leadingWidth: 55.h,
                    leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        margin: EdgeInsets.only(
                            left: 31.h, top: 22.v, bottom: 122.v),
                        onTap: () {
                          onTapArrowLeft(context);
                        }),
                    centerTitle: true,
                    title: AppbarTitle(
                        text: "Account",
                        margin: EdgeInsets.only(top: 31.v, bottom: 110.v)),
                    styleType: Style.bgFill),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 108.adaptSize,
                        width: 108.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: AppDecoration.outlinePrimary3.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder54),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle31,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            radius: BorderRadius.circular(50.h),
                            alignment: Alignment.center))),
                Padding(
                    padding: EdgeInsets.only(right: 129.h, bottom: 13.v),
                    child: CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlinePrimaryTL14,
                        alignment: Alignment.bottomRight,
                        child:
                            CustomImageView(imagePath: ImageConstant.imgPlus)))
              ])),
          SizedBox(height: 14.v),
          Opacity(
              opacity: 0.7,
              child: Text("Courtney Henry",
                  style: CustomTextStyles.bodyLargeAnticSlabPrimary)),
          SizedBox(height: 3.v),
          Opacity(
              opacity: 0.8,
              child: Text("10 Applied   |   Basavanagudi",
                  style: CustomTextStyles.bodySmallGray600_2)),
          SizedBox(height: 29.v)
        ]));
  }

  /// Section Widget
  Widget _buildAccount(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 31.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
              onTap: () {
                onClickEditAccount(context);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
                  decoration: AppDecoration.outlineIndigo3001
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIc24User1,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 36.v)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Edit Profile",
                                          style: CustomTextStyles
                                              .bodySmallIndigo300_1),
                                      SizedBox(height: 9.v),
                                      Opacity(
                                          opacity: 0.5,
                                          child: SizedBox(
                                              width: 229.h,
                                              child: Text(
                                                  "Edit all the basic profile information associated with\nyour profile",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary_3
                                                      .copyWith(height: 1.41))))
                                    ])))
                      ]))),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgNotification42,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                Opacity(
                    opacity: 0.7,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtNotifications(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text("Notifications",
                                style: CustomTextStyles.bodySmallPrimary_1))))
              ])),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgDocument41,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                Opacity(
                    opacity: 0.7,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtGetHelp(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("Get Help",
                                style: CustomTextStyles.bodySmallPrimary_1))))
              ])),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgIcHelpOutline24px,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                Opacity(
                    opacity: 0.7,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtAboutUs(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text("About us",
                                style: CustomTextStyles.bodySmallPrimary_1))))
              ])),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLogout41,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                Opacity(
                    opacity: 0.7,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtSignOut(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text("Sign Out",
                                style: CustomTextStyles.bodySmallPrimary_1))))
              ])),
          SizedBox(height: 5.v)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onTap: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreen;
      case BottomBarEnum.Search:
        return AppRoutes.searchDetailsScreen;
      case BottomBarEnum.Help:
        return AppRoutes.helpScreen;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationScreen;
      case BottomBarEnum.Account:
        return AppRoutes.accountScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.malePgPage:
        return MalePgPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the editAccountScreen when the action is triggered.
  onClickEditAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editAccountScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapTxtNotifications(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  /// Navigates to the helpScreen when the action is triggered.
  onTapTxtGetHelp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helpScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapTxtAboutUs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
