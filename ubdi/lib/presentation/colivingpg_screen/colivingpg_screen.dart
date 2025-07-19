import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ColivingpgScreen extends StatelessWidget {
  ColivingpgScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildColumn(context),
                              _buildColumn1(context),
                              _buildFrameFifty(context),
                              _buildStack(context)
                            ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 126.v,
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 31.h, top: 66.v, bottom: 36.v),
            onTap: () {
              onTaparrowleft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "Coliving", margin: EdgeInsets.only(top: 65.v, bottom: 43.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return CustomElevatedButton(
        width: 33.h,
        text: "3.5",
        margin: EdgeInsets.only(top: 11.v, right: 15.h),
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapColumn(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  height: 109.v,
                  width: 290.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle36,
                        height: 109.v,
                        width: 290.h,
                        radius: BorderRadius.circular(6.h),
                        alignment: Alignment.center,
                        onTap: () {
                          onTapDesc(context);
                        }),
                    _buildButton(context)
                  ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.7,
                                  child: Text("NR colony , Basavanagudi ",
                                      style:
                                          CustomTextStyles.bodySmallPrimary8)),
                              SizedBox(height: 1.v),
                              Opacity(
                                  opacity: 0.7,
                                  child: Text("Harinivas PG ",
                                      style: CustomTextStyles
                                          .bodySmallPrimary12_1)),
                              SizedBox(height: 1.v),
                              Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLinkedin,
                                    height: 8.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(bottom: 2.v)),
                                Opacity(
                                    opacity: 0.5,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("1.2 km from BMSCE",
                                            style: CustomTextStyles
                                                .bodySmallPrimary8_1)))
                              ]),
                              SizedBox(height: 1.v),
                              Row(children: [
                                Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 2.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.deepPurple300
                                            .withOpacity(0.62),
                                        borderRadius:
                                            BorderRadius.circular(3.h))),
                                Opacity(
                                    opacity: 0.5,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("Available",
                                            style: CustomTextStyles
                                                .bodySmallPrimary8_1)))
                              ])
                            ]),
                        Padding(
                            padding: EdgeInsets.only(top: 3.v, bottom: 6.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text("Rs. 7000 ",
                                        style: CustomTextStyles
                                            .bodySmallDeeppurple300),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Text("/per month",
                                            style: CustomTextStyles
                                                .bodySmallGray800))
                                  ]),
                                  SizedBox(height: 1.v),
                                  Text("(single occupancy)",
                                      style:
                                          CustomTextStyles.bodySmallGray8008),
                                  SizedBox(height: 2.v),
                                  Opacity(
                                      opacity: 0.8,
                                      child: Text("9 Applied   |   19 Views",
                                          style: CustomTextStyles
                                              .bodySmallGray6009))
                                ]))
                      ])),
              SizedBox(height: 13.v)
            ])));
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
        width: 33.h,
        text: "3.5",
        margin: EdgeInsets.only(top: 10.v, right: 11.h),
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildColumn1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 109.v,
              width: 290.h,
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle36109x290,
                    height: 109.v,
                    width: 290.h,
                    radius: BorderRadius.circular(6.h),
                    alignment: Alignment.center),
                _buildButton1(context)
              ])),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: _buildRow(context,
                  text1: "NR colony , Basavanagudi",
                  text2: "Rs. 6500 /",
                  text3: "per month")),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: _buildRow1(context,
                  title: "Ashirvad  PG", subtitle: "9 Applied   |   10 Views")),
          SizedBox(height: 5.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 11.h, right: 69.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRow2(context, distanceText: "1.5 km from BMSCE"),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 6.adaptSize,
                                  width: 6.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 2.v, bottom: 1.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.deepOrange400,
                                      borderRadius:
                                          BorderRadius.circular(3.h))),
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("Booked",
                                          style: CustomTextStyles
                                              .bodySmallPrimary8_1)))
                            ])
                      ]))),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return CustomElevatedButton(
        width: 33.h, text: "3.5", alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildFrameFifty(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 109.v,
              width: 290.h,
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle366,
                    height: 109.v,
                    width: 290.h,
                    radius: BorderRadius.circular(6.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 68.h, top: 2.v, right: 11.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFrame20,
                                  height: 4.v,
                                  width: 5.h),
                              SizedBox(height: 3.v),
                              _buildButton2(context)
                            ])))
              ])),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: _buildRow(context,
                  text1: "NR colony , Basavanagudi",
                  text2: "Rs. 6500 /",
                  text3: "per month")),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: _buildRow1(context,
                  title: "Ashirvad PG", subtitle: "9 Applied   |   10 Views")),
          SizedBox(height: 5.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 11.h, right: 69.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRow2(context, distanceText: "1.5 km from BMSCE"),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 6.adaptSize,
                                  width: 6.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 2.v, bottom: 1.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.deepOrange400,
                                      borderRadius:
                                          BorderRadius.circular(3.h))),
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("Booked",
                                          style: CustomTextStyles
                                              .bodySmallPrimary8_1)))
                            ])
                      ]))),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
        width: 33.h,
        text: "3.5",
        margin: EdgeInsets.only(top: 11.v, right: 15.h),
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
        height: 71.v,
        width: 313.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 71.v,
                  width: 313.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA70001,
                      borderRadius: BorderRadius.circular(8.h),
                      boxShadow: [
                        BoxShadow(
                            color: theme.colorScheme.primary,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 4))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 7.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 109.v,
                            width: 290.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle36,
                                  height: 109.v,
                                  width: 290.h,
                                  radius: BorderRadius.circular(6.h),
                                  alignment: Alignment.center),
                              _buildButton3(context)
                            ])),
                        SizedBox(height: 11.v),
                        Opacity(
                            opacity: 0.7,
                            child: Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("NR colony , Basavanagudi ",
                                    style:
                                        CustomTextStyles.bodySmallPrimary8))),
                        SizedBox(height: 62.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 63.h),
                                child: Text("Rs. 7000 ",
                                    style: CustomTextStyles
                                        .bodySmallDeeppurple300))),
                        SizedBox(height: 62.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 12.h),
                                child: Text("/per month",
                                    style: CustomTextStyles.bodySmallGray800))),
                        SizedBox(height: 70.v),
                        Opacity(
                            opacity: 0.7,
                            child: Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("Harinivas PG ",
                                    style: CustomTextStyles
                                        .bodySmallPrimary12_1))),
                        SizedBox(height: 79.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 43.h),
                                child: Text("(single occupancy)",
                                    style:
                                        CustomTextStyles.bodySmallGray8008))),
                        SizedBox(height: 88.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorDeepPurple300,
                            height: 1.v,
                            width: 6.h,
                            margin: EdgeInsets.only(left: 7.h)),
                        SizedBox(height: 88.v),
                        Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("1.2 km from BMSCE",
                                    style:
                                        CustomTextStyles.bodySmallPrimary8_1))),
                        SizedBox(height: 90.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Opacity(
                                opacity: 0.8,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 16.h),
                                    child: Text("9 Applied   |   19 Views",
                                        style: CustomTextStyles
                                            .bodySmallGray6009)))),
                        SizedBox(height: 100.v),
                        Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("Available",
                                    style:
                                        CustomTextStyles.bodySmallPrimary8_1))),
                        SizedBox(height: 102.v),
                        Container(
                            height: 1.v,
                            width: 6.h,
                            margin: EdgeInsets.only(left: 7.h),
                            decoration: BoxDecoration(
                                color: appTheme.deepPurple300.withOpacity(0.62),
                                borderRadius: BorderRadius.circular(3.h))),
                        SizedBox(height: 47.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onTap: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String text1,
    required String text2,
    required String text3,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Opacity(
          opacity: 0.7,
          child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(text1,
                  style: CustomTextStyles.bodySmallPrimary8.copyWith(
                      color: theme.colorScheme.primary.withOpacity(0.6))))),
      Spacer(),
      Text(text2,
          style: CustomTextStyles.bodySmallDeeppurple300
              .copyWith(color: appTheme.deepPurple300.withOpacity(0.62))),
      Padding(
          padding: EdgeInsets.only(left: 2.h, bottom: 2.v),
          child: Text(text3,
              style: CustomTextStyles.bodySmallGray800
                  .copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Common widget
  Widget _buildRow1(
    BuildContext context, {
    required String title,
    required String subtitle,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
              opacity: 0.7,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(title,
                      style: CustomTextStyles.bodySmallPrimary12_1.copyWith(
                          color: theme.colorScheme.primary.withOpacity(0.6))))),
          Opacity(
              opacity: 0.8,
              child: Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(subtitle,
                      style: CustomTextStyles.bodySmallGray6009.copyWith(
                          color: appTheme.gray600.withOpacity(0.64)))))
        ]);
  }

  /// Common widget
  Widget _buildRow2(
    BuildContext context, {
    required String distanceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgLinkedin,
          height: 8.v,
          width: 6.h,
          margin: EdgeInsets.only(top: 1.v)),
      Opacity(
          opacity: 0.5,
          child: Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(distanceText,
                  style: CustomTextStyles.bodySmallPrimary8_1.copyWith(
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

  /// Navigates to the homeScreen when the action is triggered.
  onTaparrowleft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the descriptionScreen when the action is triggered.
  onTapColumn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descriptionScreen);
  }

  /// Navigates to the descriptionScreen when the action is triggered.
  onTapDesc(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descriptionScreen);
  }
}
