import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PropertylistingItemWidget extends StatelessWidget {
  PropertylistingItemWidget({
    Key? key,
    this.onTapPropertyListing,
  }) : super(
          key: key,
        );

  VoidCallback? onTapPropertyListing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapPropertyListing!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle362,
              height: 85.adaptSize,
              width: 85.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
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
                            horizontal: 10.h,
                            vertical: 2.v,
                          ),
                          decoration: AppDecoration.fillDeepPurple.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Text(
                            "Rs 9000",
                            style: CustomTextStyles.bodySmallWhiteA70001,
                          ),
                        ),
                        CustomElevatedButton(
                          width: 33.h,
                          text: "3.5",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "2 Rooms Available",
                      style: CustomTextStyles.bodySmallBigshotOnePrimary,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "Basavanagudi",
                      style: CustomTextStyles.bodySmallPrimary8,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    width: 167.h,
                    margin: EdgeInsets.only(right: 29.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedinIndigo3008x6,
                          height: 8.v,
                          width: 6.h,
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "1.2 km from BMSCE",
                              style: CustomTextStyles.bodySmallPrimary8_1,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.deepOrange400,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Booked",
                              style: CustomTextStyles.bodySmallPrimary8_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
