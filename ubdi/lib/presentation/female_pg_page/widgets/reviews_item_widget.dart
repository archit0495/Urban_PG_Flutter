import 'package:anitha_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReviewsItemWidget extends StatelessWidget {
  ReviewsItemWidget({
    Key? key,
    this.onTapDescription,
  }) : super(
          key: key,
        );

  VoidCallback? onTapDescription;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDescription!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 109.v,
              width: 290.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle36,
                    height: 109.v,
                    width: 290.h,
                    radius: BorderRadius.circular(
                      6.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 33.h,
                      margin: EdgeInsets.only(
                        top: 11.v,
                        right: 15.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillGreenA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Text(
                        "3.5",
                        style: CustomTextStyles.anticSlabWhiteA70001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 12.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          "NR colony , Basavanagudi ",
                          style: CustomTextStyles.bodySmallPrimary8,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          "Harinivas PG for Women",
                          style: CustomTextStyles.bodySmallPrimary12_1,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedin,
                            height: 8.v,
                            width: 6.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "1.2 km from BMSCE",
                                style: CustomTextStyles.bodySmallPrimary8_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.v),
                      Row(
                        children: [
                          Container(
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              bottom: 2.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.deepPurple300.withOpacity(0.62),
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Available",
                                style: CustomTextStyles.bodySmallPrimary8_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 6.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Rs. 7000 ",
                              style: CustomTextStyles.bodySmallDeeppurple300,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "/per month",
                                style: CustomTextStyles.bodySmallGray800,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "(single occupancy)",
                          style: CustomTextStyles.bodySmallGray8008,
                        ),
                        SizedBox(height: 2.v),
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "9 Applied   |   19 Views",
                            style: CustomTextStyles.bodySmallGray6009,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.v),
          ],
        ),
      ),
    );
  }
}
