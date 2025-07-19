import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  const NotificationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 28.adaptSize,
            width: 28.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgNotification4,
            ),
          ),
          Opacity(
            opacity: 0.8,
            child: Container(
              width: 199.h,
              margin: EdgeInsets.only(left: 13.h),
              child: Text(
                "There are 4 available properties, you recently selected. Click here for more details.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallPrimary_2.copyWith(
                  height: 1.41,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
