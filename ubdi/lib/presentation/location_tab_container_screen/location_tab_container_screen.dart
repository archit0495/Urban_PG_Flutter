import 'dart:async';
import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/location_page/location_page.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:anitha_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationTabContainerScreen extends StatefulWidget {
  const LocationTabContainerScreen({Key? key}) : super(key: key);

  @override
  LocationTabContainerScreenState createState() =>
      LocationTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class LocationTabContainerScreenState extends State<LocationTabContainerScreen>
    with TickerProviderStateMixin {
  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(height: 21.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildFrameSixtyTwo(context),
                    SizedBox(height: 24.v),
                    Container(
                        height: 34.v,
                        width: 183.h,
                        margin: EdgeInsets.only(left: 37.h),
                        child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor:
                                appTheme.deepPurple300.withOpacity(0.62),
                            labelStyle: TextStyle(
                                fontSize: 12.fSize,
                                fontFamily: 'Antic Slab',
                                fontWeight: FontWeight.w400),
                            unselectedLabelColor:
                                theme.colorScheme.primary.withOpacity(0.46),
                            unselectedLabelStyle: TextStyle(
                                fontSize: 12.fSize,
                                fontFamily: 'Antic Slab',
                                fontWeight: FontWeight.w400),
                            indicator: BoxDecoration(
                                color: appTheme.indigo300,
                                borderRadius: BorderRadius.circular(8.h)),
                            tabs: [
                              Tab(child: Text("All Available (14)")),
                              Tab(
                                  child: Opacity(
                                      opacity: 0.3, child: Text("Booked")))
                            ])),
                    _buildTabBarView(context)
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
        height: 232.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 120.v,
              leadingWidth: 57.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 33.h, top: 20.v, bottom: 75.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarSubtitleTwo(
                  text: "Basavanagudi",
                  margin: EdgeInsets.only(top: 20.v, bottom: 82.v)),
              styleType: Style.bgFill),
          SizedBox(
              height: 153.v,
              width: 311.h,
              child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(37.43296265331129, -122.08832357078792),
                      zoom: 14.4746),
                  onMapCreated: (GoogleMapController controller) {
                    googleMapController.complete(controller);
                  },
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false))
        ]));
  }

  /// Section Widget
  Widget _buildFrameSixtyTwo(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: appTheme.blue70019, width: 1.h),
            borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Container(
            height: 232.v,
            width: 313.h,
            decoration: AppDecoration.outlineBlue70019
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Opacity(
                  opacity: 0.1,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: SizedBox(
                              height: 186.v,
                              child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color:
                                      appTheme.indigo300.withOpacity(0.39)))))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: SizedBox(
                          height: 111.v,
                          child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.deepPurple300.withOpacity(0.62),
                              endIndent: 88.h)))),
              Align(
                  alignment: Alignment.topCenter,
                  child: CustomSearchView(
                      width: 313.h,
                      controller: searchController,
                      hintText: "|",
                      alignment: Alignment.topCenter)),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 41.h, top: 64.v, right: 24.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: _buildBullTempleRoad(context,
                                text1: "NR colony, Basavanagudi",
                                text2: "Available (4)")),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: _buildBullTempleRoad(context,
                                text1: "Bull Temple Road , Basavanagudi ",
                                text2: "Available (4)")),
                        SizedBox(height: 13.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Lalbagh , Basavanagudi ",
                                      style:
                                          CustomTextStyles.bodySmallGray60012)),
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(bottom: 4.v),
                                      child: Text("Not Available",
                                          style: CustomTextStyles
                                              .bodySmallGray600_1)))
                            ])
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 156.v,
        child: TabBarView(
            controller: tabviewController,
            children: [LocationPage(), LocationPage()]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onTap: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildBullTempleRoad(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(text1,
          style: CustomTextStyles.bodySmallGray60012
              .copyWith(color: appTheme.gray600)),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(text2,
              style: CustomTextStyles.bodySmallDeeppurple300_1.copyWith(
                  decoration: TextDecoration.underline,
                  color: appTheme.deepPurple300.withOpacity(0.62))))
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
