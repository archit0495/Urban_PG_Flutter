import '../notification_screen/widgets/notificationlist_item_widget.dart';
import '../notification_screen/widgets/welcomedontforgettocompletelist_item_widget.dart';
import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 31.h),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIwwaSwipe,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Opacity(
                                          opacity: 0.7,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5.h,
                                                  top: 5.v,
                                                  bottom: 2.v),
                                              child: Text(
                                                  "hold and swipe down to refresh",
                                                  style: CustomTextStyles
                                                      .bodySmallSFUIDisplayPrimary_1)))
                                    ]),
                                SizedBox(height: 26.v),
                                _buildTodayRow(context),
                                SizedBox(height: 11.v),
                                _buildWelcomeDontForgetToCompleteList(context),
                                SizedBox(height: 14.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Opacity(
                                        opacity: 0.8,
                                        child: Text("Yesterday",
                                            style: CustomTextStyles
                                                .bodySmallPrimary12))),
                                SizedBox(height: 11.v),
                                _buildNotificationList(context)
                              ]))))
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
        title: AppbarSubtitleTwo(text: "Notifications"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTodayRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.8,
          child: Text("Today", style: CustomTextStyles.bodySmallPrimary12)),
      Opacity(
          opacity: 0.5,
          child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("Mark all read",
                  style: CustomTextStyles.bodySmallPrimary_3)))
    ]);
  }

  /// Section Widget
  Widget _buildWelcomeDontForgetToCompleteList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return WelcomedontforgettocompletelistItemWidget();
        });
  }

  /// Section Widget
  Widget _buildNotificationList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12.v);
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return NotificationlistItemWidget();
        });
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
