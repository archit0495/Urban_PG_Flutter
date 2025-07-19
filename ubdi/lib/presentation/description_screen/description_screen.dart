import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildWidgetStack(context),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.h, vertical: 7.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 13.h),
                                            child: Text("View more images",
                                                style: CustomTextStyles
                                                    .bodySmallPrimary_2
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline))))),
                                SizedBox(height: 14.v),
                                _buildThirtyFiveRow(context),
                                SizedBox(height: 16.v),
                                _buildLinkedinRow(context),
                                SizedBox(height: 11.v),
                                Opacity(
                                    opacity: 0.2,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Divider(
                                            color: appTheme.indigo300
                                                .withOpacity(0.42),
                                            indent: 9.h,
                                            endIndent: 13.h))),
                                SizedBox(height: 15.v),
                                Opacity(
                                    opacity: 0.8,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text("Description",
                                            style: CustomTextStyles
                                                .bodySmallBigshotOnePrimary12))),
                                SizedBox(height: 16.v),
                                Container(
                                    width: 325.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                        "Spacious PG available for rent with convenient amenities. Enjoy hot water, \nbike and car parking, access to a shared mess, and well maintained\ncommunal toilets. Ideal for those seeking a comfortable and \nhassle-free living arrangement.",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodySmallGray600
                                            .copyWith(height: 1.40))),
                                SizedBox(height: 35.v),
                                Opacity(
                                    opacity: 0.8,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text("Rent",
                                            style: CustomTextStyles
                                                .bodySmallBigshotOnePrimary12))),
                                SizedBox(height: 1.v),
                                _buildCheckRow(context),
                                SizedBox(height: 10.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckDeepPurple300,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 14.h),
                                              child: Text(
                                                  "Rs. 6500/Double Occupancy",
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary)))
                                    ])),
                                SizedBox(height: 8.v),
                                Opacity(
                                    opacity: 0.8,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("Facilities",
                                            style: CustomTextStyles
                                                .bodySmallBigshotOnePrimary12))),
                                SizedBox(height: 19.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.h, right: 81.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckDeepPurple300,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          margin: EdgeInsets.only(top: 3.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.h, top: 4.v),
                                          child: Text("Mess",
                                              style: CustomTextStyles
                                                  .bodySmallGray600)),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckDeepPurple300,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          margin: EdgeInsets.only(bottom: 3.v)),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, bottom: 4.v),
                                              child: Text("Shared Toilet",
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary)))
                                    ])),
                                SizedBox(height: 10.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.h, right: 54.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckDeepPurple300,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 12.h),
                                              child: Text(
                                                  "Bikes and Car Parking",
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary))),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckDeepPurple300,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("24/7 Water facility",
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary)))
                                    ])),
                                SizedBox(height: 42.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapBook(context);
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 9.h, right: 12.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30.h,
                                                vertical: 12.v),
                                            decoration: AppDecoration
                                                .fillDeepPurple
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder3),
                                            child: Text("Book Now",
                                                style: CustomTextStyles
                                                    .bodySmallGray70001)))),
                                SizedBox(height: 16.v)
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 331.v,
            width: 373.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle36331x373,
                  height: 331.v,
                  width: 373.h,
                  alignment: Alignment.center),
              CustomAppBar(
                  height: 36.v,
                  leadingWidth: 374.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgGroup,
                      margin: EdgeInsets.fromLTRB(38.h, 5.v, 329.h, 5.v),
                      onTap: () {
                        onTapImage(context);
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildThirtyFiveRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 9.h, right: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Opacity(
                  opacity: 0.7,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text("Harinivas PG for Women",
                          style: theme.textTheme.titleLarge))),
              CustomElevatedButton(
                  height: 22.v,
                  width: 46.h,
                  text: "3.5",
                  margin: EdgeInsets.only(left: 46.h),
                  buttonTextStyle: CustomTextStyles.bodySmallWhiteA70001_1)
            ])));
  }

  /// Section Widget
  Widget _buildLinkedinRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 24.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 13.v,
              width: 10.h,
              margin: EdgeInsets.only(top: 1.v, bottom: 31.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: _buildAvailableColumn(context,
                  availableText: "1.2 km from BMSCE",
                  propertyOwnedByText: "N R Colony, Basavanagudi",
                  viewOnGoogleMapsText: "0 Applied   |   19 Views")),
          Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(left: 29.h, top: 1.v, bottom: 31.v),
              decoration: BoxDecoration(
                  color: appTheme.deepPurple300.withOpacity(0.62),
                  borderRadius: BorderRadius.circular(5.h))),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: _buildAvailableColumn(context,
                  availableText: "Available",
                  propertyOwnedByText: "Property Owned By: Alok",
                  viewOnGoogleMapsText: "View on Google Maps",
                  onTapViewOnGoogleMapsText: () {
                onTapTxtViewOnGoogleMapsText(context);
              }))
        ]));
  }

  /// Section Widget
  Widget _buildCheckRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 17.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCheckDeepPurple300,
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v)),
          Opacity(
              opacity: 0.6,
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text("Rs. 7000/Single Occupancy",
                      style: CustomTextStyles.bodySmallPrimary))),
          CustomImageView(
              imagePath: ImageConstant.imgCheckDeepPurple300,
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(left: 21.h, top: 3.v)),
          Opacity(
              opacity: 0.6,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 2.v),
                  child: Text("Rs. 5200/Triple Occupancy",
                      style: CustomTextStyles.bodySmallPrimary)))
        ]));
  }

  /// Common widget
  Widget _buildAvailableColumn(
    BuildContext context, {
    required String availableText,
    required String propertyOwnedByText,
    required String viewOnGoogleMapsText,
    Function? onTapViewOnGoogleMapsText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Opacity(
          opacity: 0.5,
          child: Text(availableText,
              style: CustomTextStyles.bodySmallPrimary12_2.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.53)))),
      SizedBox(height: 2.v),
      Opacity(
          opacity: 0.5,
          child: Text(propertyOwnedByText,
              style: CustomTextStyles.bodySmallPrimary_3.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.53)))),
      SizedBox(height: 3.v),
      GestureDetector(
          onTap: () {
            onTapViewOnGoogleMapsText!.call();
          },
          child: Opacity(
              opacity: 0.8,
              child: Text(viewOnGoogleMapsText,
                  style: CustomTextStyles.bodySmallGray600_2.copyWith(
                      decoration: TextDecoration.underline,
                      color: appTheme.gray600.withOpacity(0.64)))))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the locationTabContainerScreen when the action is triggered.
  onTapTxtViewOnGoogleMapsText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationTabContainerScreen);
  }

  /// Navigates to the bookScreen when the action is triggered.
  onTapBook(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookScreen);
  }
}
