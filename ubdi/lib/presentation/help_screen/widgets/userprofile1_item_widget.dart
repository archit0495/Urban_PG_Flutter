import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 88.v,
            ),
            child: CustomIconButton(
              height: 26.adaptSize,
              width: 26.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 22.v,
              right: 12.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "What do we get here in this app?",
                    style: CustomTextStyles.bodySmallBigshotOnePrimary12,
                  ),
                ),
                SizedBox(height: 9.v),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 215.h,
                    child: Text(
                      "In our urban PG app, you get access to a seamless and convenient platform that simplifies the process of finding and securing a comfortable paying guest accommodation",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPrimary12_2.copyWith(
                        height: 1.41,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
