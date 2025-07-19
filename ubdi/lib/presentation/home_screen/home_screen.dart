import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:anitha_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController occupancyController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSearchFrameFortySix(context),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("MALE",
                              style: CustomTextStyles.bodySmallGray600)),
                      SizedBox(height: 2.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle3686x334,
                          height: 86.v,
                          width: 334.h,
                          radius: BorderRadius.circular(8.h),
                          alignment: Alignment.center),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("FEMALE",
                              style: CustomTextStyles.bodySmallGray600)),
                      SizedBox(height: 7.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle37,
                          height: 86.v,
                          width: 334.h,
                          radius: BorderRadius.circular(8.h),
                          alignment: Alignment.center,
                          onTap: () {
                            onTapFemalePg(context);
                          }),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text("COLIVING",
                              style: CustomTextStyles.bodySmallGray600)),
                      SizedBox(height: 6.v),
                      _buildHomeWidget(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 29.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.v),
                  Text("Search", style: CustomTextStyles.bodySmallBigshotOne),
                  SizedBox(height: 4.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomTextFormField(
                          controller: searchController,
                          hintText: "Enter Location here",
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          filled: true,
                          fillColor: appTheme.gray100)),
                  SizedBox(height: 7.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomTextFormField(
                          controller: priceController,
                          hintText: "Enter price range",
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          filled: true,
                          fillColor: appTheme.gray100)),
                  SizedBox(height: 7.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomTextFormField(
                          controller: occupancyController,
                          hintText: "Occupancy",
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(10.h, 10.v, 4.h, 12.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgMenu,
                                  height: 13.adaptSize,
                                  width: 13.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 35.v),
                          contentPadding: EdgeInsets.only(
                              top: 11.v, right: 27.h, bottom: 11.v),
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          filled: true,
                          fillColor: appTheme.gray100)),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapSearchNow(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 1.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),
                              decoration: AppDecoration.fillDeepPurple.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3),
                              child: Text("Search Now",
                                  style: CustomTextStyles.bodySmallGray70001))))
                ])));
  }

  /// Section Widget
  Widget _buildSearchFrameFortySix(BuildContext context) {
    return SizedBox(
        height: 330.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle30,
              height: 157.v,
              width: 375.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 289.h, right: 70.h, bottom: 90.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMenuDown,
                        height: 16.adaptSize,
                        width: 16.adaptSize),
                    SizedBox(height: 24.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgMenuDown,
                        height: 16.adaptSize,
                        width: 16.adaptSize)
                  ]))),
          _buildFrameFortySix(context)
        ]));
  }

  /// Section Widget
  Widget _buildHomeWidget(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 87.v,
            width: 334.h,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle38,
                  height: 87.v,
                  width: 334.h,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 87.v,
                      width: 334.h,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle38,
                            height: 87.v,
                            width: 334.h,
                            radius: BorderRadius.circular(8.h),
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle38,
                            height: 86.v,
                            width: 334.h,
                            radius: BorderRadius.circular(8.h),
                            alignment: Alignment.center,
                            onTap: () {
                              onTapColivingPg(context);
                            })
                      ])))
            ])));
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

  /// Navigates to the locationTabContainerScreen when the action is triggered.
  onTapSearchNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationTabContainerScreen);
  }

  /// Navigates to the femalePgContainerScreen when the action is triggered.
  onTapFemalePg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.femalePgContainerScreen);
  }

  /// Navigates to the colivingpgScreen when the action is triggered.
  onTapColivingPg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.colivingpgScreen);
  }
}
