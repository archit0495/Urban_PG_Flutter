import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:anitha_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchDetailsScreen extends StatelessWidget {
  SearchDetailsScreen({Key? key}) : super(key: key);

  TextEditingController basavanagudiBangaloreController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeftSection(context),
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 31.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildShowingResultsSection(context),
                                    SizedBox(height: 11.v),
                                    _buildFrameFortyEightSection(context),
                                    _buildFrameFortyNineSection(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildFrameFortyNineSection1(context)));
  }

  /// Section Widget
  Widget _buildFrameFortySevenSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                      opacity: 0.8,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Search for PG’S",
                              style: CustomTextStyles.bodySmallGray70001))),
                  SizedBox(height: 11.v),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.only(right: 8.h),
                      color: appTheme.gray100,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: appTheme.blue70019.withOpacity(0.5),
                              width: 1.h),
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Container(
                          height: 35.v,
                          width: 257.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMapMarker,
                                height: 9.v,
                                width: 12.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top: 6.v, right: 225.h, bottom: 6.v)),
                            Opacity(
                                opacity: 0.3,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        17.h, 4.v, 116.h, 5.v),
                                    child: CustomTextFormField(
                                        controller:
                                            basavanagudiBangaloreController,
                                        hintText: "Basavanagudi,Bangalore",
                                        hintStyle: theme.textTheme.bodySmall!,
                                        textInputAction: TextInputAction.done,
                                        alignment: Alignment.topLeft))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 134.h, right: 100.h, bottom: 6.v),
                                    child: Text("|",
                                        style: CustomTextStyles
                                            .bodySmallSFUIDisplayGray600)))
                          ])))
                ])));
  }

  /// Section Widget
  Widget _buildArrowLeftSection(BuildContext context) {
    return SizedBox(
        height: 192.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 124.v,
              leadingWidth: 55.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 31.h, top: 19.v, bottom: 81.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarSubtitleTwo(
                  text: "Search Details",
                  margin: EdgeInsets.only(top: 23.v, bottom: 83.v)),
              styleType: Style.bgFill),
          _buildFrameFortySevenSection(context)
        ]));
  }

  /// Section Widget
  Widget _buildShowingResultsSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Opacity(
              opacity: 0.7,
              child: Text("Showing Results",
                  style: CustomTextStyles.bodyMediumBigshotOnePrimary)),
          Opacity(
              opacity: 0.4,
              child: Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text("12 Results",
                      style: CustomTextStyles.bodySmallPrimary_4)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyEightSection(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameFortyEightSection(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 10.h),
            padding: EdgeInsets.symmetric(vertical: 9.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: 109.v,
                      width: 290.h,
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle36,
                            height: 109.v,
                            width: 290.h,
                            radius: BorderRadius.circular(6.h),
                            alignment: Alignment.center),
                        CustomElevatedButton(
                            width: 33.h,
                            text: "3.5",
                            margin: EdgeInsets.only(top: 11.v, right: 15.h),
                            alignment: Alignment.topRight)
                      ]))),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(left: 23.h, right: 9.h),
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
                                  child: Text("Harinivas PG for Women",
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
                              SizedBox(height: 2.v),
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
  Widget _buildFrameFortyNineSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 10.v),
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
                CustomElevatedButton(
                    width: 33.h,
                    text: "3.5",
                    margin: EdgeInsets.only(top: 10.v, right: 11.h),
                    alignment: Alignment.topRight)
              ])),
          SizedBox(height: 19.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Opacity(
                                      opacity: 0.7,
                                      child: Text("NR colony , Basavanagudi",
                                          style: CustomTextStyles
                                              .bodySmallPrimary8)),
                                  SizedBox(height: 4.v),
                                  Opacity(
                                      opacity: 0.7,
                                      child: Text("Ashirvad Ladies PG",
                                          style: CustomTextStyles
                                              .bodySmallPrimary12_1)),
                                  SizedBox(height: 7.v),
                                  Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLinkedin,
                                        height: 8.v,
                                        width: 6.h,
                                        margin: EdgeInsets.only(top: 1.v)),
                                    Opacity(
                                        opacity: 0.5,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text("1.5 km from BMSCE",
                                                style: CustomTextStyles
                                                    .bodySmallPrimary8_1)))
                                  ])
                                ])),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 105.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rs. 6500 /",
                                            style: CustomTextStyles
                                                .bodySmallDeeppurple300),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.v),
                                            child: Text("per month",
                                                style: CustomTextStyles
                                                    .bodySmallGray800))
                                      ])),
                              SizedBox(height: 6.v),
                              Opacity(
                                  opacity: 0.8,
                                  child: Text("9 Applied   |   10 Views",
                                      style:
                                          CustomTextStyles.bodySmallGray6009)),
                              SizedBox(height: 5.v),
                              Row(children: [
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
                            ])
                      ]))),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyNineSection1(BuildContext context) {
    return Container(
        height: 119.v,
        width: 303.h,
        margin: EdgeInsets.only(left: 31.h, right: 41.h),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 108.v,
                  width: 303.h,
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
                  padding: EdgeInsets.only(left: 12.h, right: 1.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                            height: 109.v,
                            width: 290.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle36109x290,
                                  height: 109.v,
                                  width: 290.h,
                                  radius: BorderRadius.circular(6.h),
                                  alignment: Alignment.center),
                              CustomElevatedButton(
                                  width: 33.h,
                                  text: "3.5",
                                  margin:
                                      EdgeInsets.only(top: 10.v, right: 11.h),
                                  alignment: Alignment.topRight)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(top: 16.v, right: 49.h),
                            child: Text("Rs. 6500 /",
                                style:
                                    CustomTextStyles.bodySmallDeeppurple300)),
                        Padding(
                            padding: EdgeInsets.only(top: 29.v),
                            child: Text("per month",
                                style: CustomTextStyles.bodySmallGray800)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Opacity(
                                opacity: 0.7,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 31.v),
                                    child: Text("NR colony , Basavanagudi",
                                        style: CustomTextStyles
                                            .bodySmallPrimary8)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Opacity(
                                opacity: 0.7,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 45.v),
                                    child: Text("Ashirvad Ladies PG",
                                        style: CustomTextStyles
                                            .bodySmallPrimary12_1)))),
                        Opacity(
                            opacity: 0.8,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 49.v, right: 12.h),
                                child: Text("9 Applied   |   10 Views",
                                    style:
                                        CustomTextStyles.bodySmallGray6009))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Opacity(
                                opacity: 0.5,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 24.h, top: 68.v),
                                    child: Text("1.5 km from BMSCE",
                                        style: CustomTextStyles
                                            .bodySmallPrimary8_1)))),
                        Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 68.v, right: 69.h),
                                child: Text("Booked",
                                    style:
                                        CustomTextStyles.bodySmallPrimary8_1))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorDeepPurple300,
                            height: 1.v,
                            width: 6.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10.h, top: 70.v)),
                        Container(
                            height: 1.v,
                            width: 6.h,
                            margin: EdgeInsets.only(
                                top: 71.v, right: 100.h, bottom: 11.v),
                            decoration: BoxDecoration(
                                color: appTheme.deepOrange400,
                                borderRadius: BorderRadius.circular(3.h)))
                      ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the descriptionScreen when the action is triggered.
  onTapFrameFortyEightSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descriptionScreen);
  }
}
