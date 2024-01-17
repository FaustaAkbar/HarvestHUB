import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/custom_elevated_button.dart';
import 'package:harvesthub/widgets/custom_icon_button.dart';
import 'package:harvesthub/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController roleController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 950.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngtreeScribbl,
                      height: 335.v,
                      width: 360.h,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 147.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 240.v),
                        decoration: BoxDecoration(
                          color: appTheme.green900,
                          borderRadius: BorderRadius.circular(
                            18.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(51.h, 100.v, 51.h, 186.v),
                        decoration: AppDecoration.fillGreen.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildUserName(context),
                            SizedBox(height: 17.v),
                            _buildPassword(context),
                            SizedBox(height: 17.v),
                            _buildRole(context),
                            SizedBox(height: 86.v),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildLOGIN(context),
                                  SizedBox(
                                    height: 37.v,
                                    width: 52.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomIconButton(
                                          height: 37.v,
                                          width: 42.h,
                                          alignment: Alignment.center,
                                          child: CustomImageView(),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFingerprint,
                                          height: 33.v,
                                          width: 52.h,
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don’t have an account?",
                                    style: CustomTextStyles.bodySmallff00000010,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "Register here",
                                    style: CustomTextStyles.labelMediumff000000
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 15.v),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle10,
                      height: 126.v,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 125.v),
                    ),
                    _buildFortySix(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle9,
                      height: 160.v,
                      width: 360.h,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 150.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgHarvesthub,
                      height: 120.v,
                      width: 360.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 225.v),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 9.v, 9.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgEye,
            height: 16.v,
            width: 22.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 37.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.only(
          left: 12.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRole(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: CustomTextFormField(
        controller: roleController,
        hintText: "Role",
      ),
    );
  }

  /// Section Widget
  Widget _buildLOGIN(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 37.v,
        text: "LOGIN",
        onPressed: () {
          onTapGetStarted(context);
        },
        buttonStyle: CustomButtonStyles.fillGreen,
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 303.v),
        padding: EdgeInsets.symmetric(
          horizontal: 72.h,
          vertical: 12.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder16,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup46,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 95.v),
            Text(
              "Login to your account",
              style: theme.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: CustomTextFormField(
        width: 246.h,
        controller: userNameController,
        hintText: "Username",
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}

onTapGetStarted(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.homepageScreen);
}
