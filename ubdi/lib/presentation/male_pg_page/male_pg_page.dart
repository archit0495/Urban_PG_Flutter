import '../male_pg_page/widgets/userprofilelist_item_widget.dart';
import 'package:anitha_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

class MalePgPage extends StatelessWidget {
  const MalePgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Container(
                width: 374.h,
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArrowLeftRow(context),
                      _buildUserProfileList(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 36.v),
        decoration: AppDecoration.fillDeepPurple
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 30.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 115.h, top: 28.v, bottom: 8.v),
              child: Text("Male", style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 22.h, right: 39.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 1.v);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UserprofilelistItemWidget(onTapUserProfile: () {
                    onTapUserProfile(context);
                  });
                })));
  }

  /// Navigates to the descriptionScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descriptionScreen);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
