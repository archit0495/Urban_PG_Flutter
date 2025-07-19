import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 22.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle38,
                      height: 195.v,
                      width: 315.h,
                      radius: BorderRadius.circular(8.h)),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("About the App",
                              style: CustomTextStyles.bodyLargeGray70001))),
                  SizedBox(height: 14.v),
                  Container(
                      width: 308.h,
                      margin: EdgeInsets.only(left: 12.h, right: 5.h),
                      child: Text(
                          "\"Welcome to Urban PG , your go-to solution for hassle-free PG hunting! We understand the challenges of finding the perfect Paying Guest accommodation, and that's why we've crafted a seamless platform dedicated to simplifying your search. Whether you're a student, a working professional, or someone in need of a comfortable living space, our user-friendly app connects you with a comprehensive database of nearby PG options. Empowering you with detailed listings, real-time availability, and essential information about facilities, neighborhoods, and more, Urban PG is committed to making your PG search convenient, efficient, and ultimately, successful.\"",
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray600
                              .copyWith(height: 1.41))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 31.h, top: 22.v, bottom: 36.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "About us"),
        styleType: Style.bgFill_1);
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
