import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_drop_down.dart';
import 'package:anitha_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController cvvController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 131.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  _buildRow(context),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: Text("Card Holder’s Name",
                                          style: CustomTextStyles
                                              .bodyMediumIBMPlexSansPrimary)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24.h),
                                      child: CustomTextFormField(
                                          controller: nameController,
                                          hintText: "Name on Card",
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.center)),
                                  Spacer(),
                                  _buildFrameColumn2(context)
                                ])))))));
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
        title: AppbarSubtitleTwo(text: "Add New Card"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Valid Thru", style: CustomTextStyles.bodyMediumIBMPlexSansPrimary),
      SizedBox(height: 7.v),
      SizedBox(
          width: 201.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomDropDown(
                width: 103.h,
                icon: Container(
                    margin: EdgeInsets.fromLTRB(10.h, 10.v, 16.h, 10.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 20.adaptSize,
                        width: 20.adaptSize)),
                hintText: "Month",
                items: dropdownItemList,
                onChanged: (value) {}),
            CustomDropDown(
                width: 90.h,
                icon: Container(
                    margin: EdgeInsets.fromLTRB(10.h, 10.v, 16.h, 10.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 20.adaptSize,
                        width: 20.adaptSize)),
                hintText: "Year",
                items: dropdownItemList1,
                onChanged: (value) {})
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("CVV", style: CustomTextStyles.bodyMediumIBMPlexSansPrimary),
          SizedBox(height: 7.v),
          CustomTextFormField(
              width: 102.h,
              controller: cvvController,
              hintText: "CVV",
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(21.h, 10.v, 16.h, 10.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 40.v),
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 10.v, bottom: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 34.h),
        child: Row(children: [
          _buildFrameColumn(context),
          _buildFrameColumn1(context)
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          SizedBox(height: 13.v),
          GestureDetector(
              onTap: () {
                i(context);
              },
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 14.v),
                  decoration: AppDecoration.fillSecondaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Text("Save card and Proceed",
                      style: CustomTextStyles.titleMediumWhiteA70001)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the bookScreen when the action is triggered.
  i(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookScreen);
  }
}
