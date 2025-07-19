import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:anitha_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:anitha_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:anitha_s_application5/widgets/custom_elevated_button.dart';
import 'package:anitha_s_application5/widgets/custom_icon_button.dart';
import 'package:anitha_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookScreen extends StatelessWidget {
  BookScreen({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 12.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Credi & Debit Cards",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 15.v),
                                  _buildCreditDebitCards(context),
                                  SizedBox(height: 24.v),
                                  Text("UPI",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 15.v),
                                  _buildUpiFrame(context),
                                  SizedBox(height: 25.v),
                                  Text("More Payment Options",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 14.v),
                                  _buildMorePaymentOptions(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildFrame(context)));
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
        title: AppbarSubtitleTwo(text: "Book Now "),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCreditDebitCards(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 6.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineOnError
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCreditDebitCardsFrame(context,
                  logoImage: ImageConstant.imgUser,
                  bankName: "Axis Bank",
                  cardNumber: "**** **** **** 8395"),
              SizedBox(height: 8.v),
              _buildCreditDebitCardsFrame(context,
                  logoImage: ImageConstant.imgLogosVisa,
                  bankName: "HDFC Bank",
                  cardNumber: "**** **** **** 6246"),
              SizedBox(height: 12.v),
              GestureDetector(
                  onTap: () {
                    onTapFrame(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Row(children: [
                        CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFloatingIcon)),
                        GestureDetector(
                            onTap: () {
                              hj(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 2.v, bottom: 2.v),
                                child: Text("Add New Card",
                                    style: CustomTextStyles
                                        .bodyMediumIBMPlexSansGray700)))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildUpiFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 6.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineOnError
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
                  decoration: AppDecoration.outlineOnError1
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage3,
                        height: 20.v,
                        width: 23.h),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h, top: 3.v),
                        child: Text("Google Pay",
                            style:
                                CustomTextStyles.bodySmallIBMPlexSansGray700)),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgCarbonRadioButtonChecked,
                        height: 20.adaptSize,
                        width: 20.adaptSize)
                  ])),
              SizedBox(height: 8.v),
              CustomTextFormField(
                  controller: phoneController,
                  hintText: "PhonePe",
                  hintStyle: CustomTextStyles.bodySmallIBMPlexSansGray700,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 8.v, 8.h, 8.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFrame34918,
                          height: 20.v,
                          width: 23.h)),
                  prefixConstraints: BoxConstraints(maxHeight: 36.v),
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 8.v, 16.h, 8.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCarbonRadioButtonChecked,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 36.v),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.v)),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFloatingIcon)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 12.h, top: 2.v, bottom: 2.v),
                        child: Text("Add New UPI ID",
                            style:
                                CustomTextStyles.bodyMediumIBMPlexSansGray700))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildMorePaymentOptions(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 6.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineOnError
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildMorePaymentOptionsFrame(context,
              thumbsUpImage: ImageConstant.imgUserSecondarycontainer,
              netBankingText: "Wallet"),
          SizedBox(height: 8.v),
          _buildMorePaymentOptionsFrame(context,
              thumbsUpImage: ImageConstant.imgThumbsUp,
              netBankingText: "Net Banking")
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 27.v),
        decoration: AppDecoration.fillGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("₹5,200",
                        style: CustomTextStyles.titleLargeIBMPlexSansPrimary),
                    Padding(
                        padding: EdgeInsets.only(top: 5.v),
                        child: Text("View detailed bill",
                            style:
                                CustomTextStyles.titleSmallIBMPlexSansBlue500))
                  ])),
          CustomElevatedButton(
              height: 50.v,
              width: 159.h,
              text: "Proceed to Pay",
              buttonStyle: CustomButtonStyles.fillSecondaryContainer,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001)
        ]));
  }

  /// Common widget
  Widget _buildCreditDebitCardsFrame(
    BuildContext context, {
    required String logoImage,
    required String bankName,
    required String cardNumber,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
        decoration: AppDecoration.outlineOnError1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          CustomImageView(
              imagePath: logoImage,
              height: 10.v,
              width: 32.h,
              margin: EdgeInsets.symmetric(vertical: 4.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.v),
              child: Text(bankName,
                  style: CustomTextStyles.bodySmallIBMPlexSansGray700
                      .copyWith(color: appTheme.gray700))),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.v),
              child: Text(cardNumber,
                  style: CustomTextStyles.bodySmallIBMPlexSansGray700
                      .copyWith(color: appTheme.gray700))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgCarbonRadioButtonChecked,
              height: 20.adaptSize,
              width: 20.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildMorePaymentOptionsFrame(
    BuildContext context, {
    required String thumbsUpImage,
    required String netBankingText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
        decoration: AppDecoration.outlineOnError1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: thumbsUpImage,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 3.v),
              child: Text(netBankingText,
                  style: CustomTextStyles.bodySmallIBMPlexSansGray700
                      .copyWith(color: appTheme.gray700))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addNewCardScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewCardScreen);
  }

  /// Navigates to the addNewCardScreen when the action is triggered.
  hj(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewCardScreen);
  }
}
