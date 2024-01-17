import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:harvesthub/widgets/app_bar/appbar_title_image.dart';
import 'package:harvesthub/widgets/app_bar/appbar_trailing_image.dart';
import 'package:harvesthub/widgets/app_bar/custom_app_bar.dart';
import 'package:harvesthub/widgets/custom_icon_button.dart';
import 'package:harvesthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatTwoScreen extends StatelessWidget {
  ChatTwoScreen({Key? key}) : super(key: key);

  TextEditingController messageFourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green200,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(context),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 35.v,
                                width: 209.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 5.h, bottom: 5.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.h,
                                                  vertical: 1.v),
                                              decoration: AppDecoration
                                                  .fillWhiteA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder11),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v,
                                                                bottom: 1.v),
                                                        child: Text(
                                                            "barang ready mas?",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h,
                                                                top: 11.v),
                                                        child: Text("13:25",
                                                            style: CustomTextStyles
                                                                .bodySmallBlack900Regular))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgContrast,
                                          height: 16.v,
                                          width: 15.h,
                                          alignment: Alignment.bottomLeft)
                                    ])),
                            SizedBox(height: 9.v),
                            _buildReadyMasSilahkan(context),
                            SizedBox(height: 9.v),
                            SizedBox(
                                height: 35.v,
                                width: 218.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 5.h, bottom: 5.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.h,
                                                  vertical: 1.v),
                                              decoration: AppDecoration
                                                  .fillWhiteA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder11),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 3.v),
                                                        child: Text(
                                                            "bisa dikirim hari ini?",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h,
                                                                top: 11.v),
                                                        child: Text("13:25",
                                                            style: CustomTextStyles
                                                                .bodySmallBlack900Regular))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgContrast,
                                          height: 16.v,
                                          width: 15.h,
                                          alignment: Alignment.bottomLeft)
                                    ])),
                            SizedBox(height: 5.v)
                          ]))
                ])),
            bottomNavigationBar: _buildMessageFour(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
        height: 101.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomAppBar(
              height: 95.v,
              title: Padding(
                  padding: EdgeInsets.only(left: 68.h, top: 52.v, bottom: 7.v),
                  child: Row(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgClose,
                        onTap: () {
                          onTapClose(context);
                        }),
                    AppbarSubtitleOne(
                        text: "Setiawan",
                        margin:
                            EdgeInsets.only(left: 12.h, top: 5.v, bottom: 7.v))
                  ])),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgImage4,
                    margin: EdgeInsets.fromLTRB(20.h, 60.v, 20.h, 15.v))
              ],
              styleType: Style.bgFill_1),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text("<",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium))),
          Align(
              alignment: Alignment.centerRight,
              child: Text("14:57", style: CustomTextStyles.labelLargeGray70002))
        ]));
  }

  /// Section Widget
  Widget _buildReadyMasSilahkan(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 35.v,
            width: 290.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      margin: EdgeInsets.only(right: 4.h, bottom: 5.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
                      decoration: AppDecoration.fillGreen.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder11),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
                                child: Text("ready mas, silahkan dipesan",
                                    style: theme.textTheme.bodyLarge)),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h, top: 11.v),
                                child: Text("13:52",
                                    style: CustomTextStyles
                                        .bodySmallBlack900Regular)),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage2,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 3.h, top: 14.v, bottom: 1.v))
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgUserGreen50,
                  height: 16.v,
                  width: 15.h,
                  alignment: Alignment.bottomRight)
            ])));
  }

  /// Section Widget
  Widget _buildMessageFour(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 38.v),
        decoration: AppDecoration.fillGreen,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: CustomIconButton(
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgPlus))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: CustomTextFormField(
                          controller: messageFourController,
                          hintText: "Tuliskan pesan",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 6.v),
                          borderDecoration: TextFormFieldStyleHelper.fillGreen,
                          fillColor: appTheme.green200))),
              CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 11.h, top: 3.v, bottom: 3.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
