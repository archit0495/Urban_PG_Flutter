import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:anitha_s_application5/widgets/custom_icon_button.dart';
import 'package:anitha_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditAccountScreen extends StatelessWidget {
  EditAccountScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeftAppBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Column(children: [
                        SizedBox(height: 14.v),
                        Opacity(
                            opacity: 0.7,
                            child: Text("Courtney Henry",
                                style: CustomTextStyles
                                    .bodyLargeAnticSlabPrimary)),
                        SizedBox(height: 3.v),
                        Opacity(
                            opacity: 0.8,
                            child: Text("10 Applied   |   Basavanagudi",
                                style: CustomTextStyles.bodySmallGray600_2)),
                        SizedBox(height: 26.v),
                        _buildCallMeButton(context),
                        SizedBox(height: 18.v),
                        _buildFrameThirtyTwoColumn(context),
                        SizedBox(height: 28.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(children: [
                                  _buildApplied4Button(context),
                                  Opacity(
                                      opacity: 0.3,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 14.h,
                                              top: 9.v,
                                              bottom: 9.v),
                                          child: Text("Liked",
                                              style: CustomTextStyles
                                                  .bodySmallPrimary12_3)))
                                ]))),
                        SizedBox(height: 22.v),
                        _buildPostThreeRow(context),
                        SizedBox(height: 22.v),
                        _buildThirtyFive(context)
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildArrowLeftAppBar(BuildContext context) {
    return SizedBox(
        height: 222.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 168.v,
              leadingWidth: 55.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 31.h, top: 22.v, bottom: 122.v),
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
                  decoration: AppDecoration.outlinePrimary3
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder54),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle31,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h),
                      alignment: Alignment.center))),
          Padding(
              padding: EdgeInsets.only(right: 124.h, bottom: 13.v),
              child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryTL14,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildCallMeButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 34.v,
        width: 149.h,
        text: "Call Me",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 11.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCall41,
                height: 14.adaptSize,
                width: 14.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineIndigo,
        buttonTextStyle: CustomTextStyles.bodySmallIndigo300_1);
  }

  /// Section Widget
  Widget _buildFrameThirtyTwoColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: AppDecoration.outlineBlue700191
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 29.h, right: 25.h),
                  child: _buildPhoneNoRow(context,
                      phoneNo: "Email", widgetText: "henry11@gmail.com")),
              SizedBox(height: 11.v),
              Opacity(opacity: 0.1, child: Divider()),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, right: 24.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                            opacity: 0.8,
                            child: Text("Location",
                                style: CustomTextStyles.bodySmallPrimary12)),
                        Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text("Basavanagudi",
                                    style:
                                        CustomTextStyles.bodySmallPrimary_3)))
                      ])),
              SizedBox(height: 15.v),
              SizedBox(
                  height: 1.v,
                  width: 315.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Opacity(
                        opacity: 0.1,
                        child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(width: 315.h, child: Divider()))),
                    Opacity(
                        opacity: 0.1,
                        child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(width: 315.h, child: Divider())))
                  ])),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, right: 25.h),
                  child: _buildPhoneNoRow(context,
                      phoneNo: "Phone No", widgetText: "(+91) 9125331510"))
            ]));
  }

  /// Section Widget
  Widget _buildApplied4Button(BuildContext context) {
    return CustomElevatedButton(
        height: 34.v,
        width: 102.h,
        text: "Applied (4)",
        buttonStyle: CustomButtonStyles.fillIndigoTL8,
        buttonTextStyle: CustomTextStyles.bodySmallIndigo300);
  }

  /// Section Widget
  Widget _buildThirtyFiveButton(BuildContext context) {
    return CustomElevatedButton(width: 33.h, text: "3.5");
  }

  /// Section Widget
  Widget _buildPostThreeRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle362,
              height: 85.adaptSize,
              width: 85.adaptSize,
              radius: BorderRadius.circular(8.h),
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 196.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 51.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 2.v),
                                  decoration: AppDecoration.fillDeepPurple
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder3),
                                  child: Text("Rs 9000",
                                      style: CustomTextStyles
                                          .bodySmallWhiteA70001)),
                              _buildThirtyFiveButton(context)
                            ])),
                    SizedBox(height: 9.v),
                    Opacity(
                        opacity: 0.7,
                        child: Text("2 Rooms Available",
                            style:
                                CustomTextStyles.bodySmallBigshotOnePrimary)),
                    SizedBox(height: 4.v),
                    Opacity(
                        opacity: 0.7,
                        child: Text("Mahalaxmi, Lalitpur",
                            style:
                                CustomTextStyles.bodySmallSFUIDisplayPrimary8)),
                    SizedBox(height: 18.v),
                    Container(
                        width: 167.h,
                        margin: EdgeInsets.only(right: 29.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLinkedinIndigo300,
                              height: 8.v,
                              width: 6.h),
                          Opacity(
                              opacity: 0.5,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("1.2 km from Gwarko",
                                      style: CustomTextStyles
                                          .bodySmallPrimary8_1))),
                          Spacer(),
                          Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                              decoration: BoxDecoration(
                                  color: appTheme.deepOrange400,
                                  borderRadius: BorderRadius.circular(3.h))),
                          Opacity(
                              opacity: 0.5,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("Booked",
                                      style: CustomTextStyles
                                          .bodySmallPrimary8_1)))
                        ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyFiveButton1(BuildContext context) {
    return CustomElevatedButton(width: 33.h, text: "3.5");
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle362,
                  height: 67.v,
                  width: 85.h,
                  radius: BorderRadius.circular(8.h),
                  margin: EdgeInsets.only(top: 7.v)),
              Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 196.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 1.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 9.h, vertical: 2.v),
                                      decoration: AppDecoration.fillIndigo
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder3),
                                      child: Text("Rs 4000",
                                          style: theme.textTheme.labelSmall)),
                                  _buildThirtyFiveButton1(context)
                                ])),
                        SizedBox(height: 8.v),
                        Opacity(
                            opacity: 0.7,
                            child: Text("1 Room Available",
                                style: theme.textTheme.labelLarge)),
                        SizedBox(height: 3.v),
                        Opacity(
                            opacity: 0.7,
                            child: Text("Mahalaxmi, Lalitpur",
                                style: CustomTextStyles
                                    .bodySmallSFUIDisplayPrimary8)),
                        SizedBox(height: 18.v),
                        Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("1.2 km from Gwarko",
                                    style:
                                        CustomTextStyles.bodySmallPrimary8_1))),
                        SizedBox(height: 6.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Opacity(
                                opacity: 0.5,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 29.h),
                                    child: Text("Booked",
                                        style: CustomTextStyles
                                            .bodySmallPrimary8_1)))),
                        SizedBox(height: 7.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigo300,
                            height: 1.v,
                            width: 6.h),
                        SizedBox(height: 8.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 1.v,
                                width: 6.h,
                                margin: EdgeInsets.only(right: 61.h),
                                decoration: BoxDecoration(
                                    color: appTheme.deepOrange400,
                                    borderRadius: BorderRadius.circular(3.h))))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onTap: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildPhoneNoRow(
    BuildContext context, {
    required String phoneNo,
    required String widgetText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.8,
          child: Text(phoneNo,
              style: CustomTextStyles.bodySmallPrimary12.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.64)))),
      Opacity(
          opacity: 0.5,
          child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(widgetText,
                  style: CustomTextStyles.bodySmallPrimary_3.copyWith(
                      color: theme.colorScheme.primary.withOpacity(0.53)))))
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Help:
        return "/";
      case BottomBarEnum.Notifications:
        return AppRoutes.malePgPage;
      case BottomBarEnum.Account:
        return "/";
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
}
