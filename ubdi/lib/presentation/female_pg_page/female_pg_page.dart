import '../female_pg_page/widgets/reviews_item_widget.dart';
import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FemalePgPage extends StatelessWidget {
  const FemalePgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 29.h, right: 32.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 3.v);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ReviewsItemWidget(onTapDescription: () {
                        onTapDescription(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 126.v,
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 31.h, top: 66.v, bottom: 36.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Female"),
        styleType: Style.bgFill);
  }

  /// Navigates to the descriptionScreen when the action is triggered.
  onTapDescription(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descriptionScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
