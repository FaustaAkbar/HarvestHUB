import 'package:flutter/material.dart';
import 'package:tesssss/core/app_export.dart';
import 'package:tesssss/widgets/custom_elevated_button.dart';
import 'package:tesssss/widgets/custom_icon_button.dart';
import 'package:tesssss/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController roleFieldController = TextEditingController();

  TextEditingController userNameFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngtreeScribbl,
                      height: 356.v,
                      width: 360.h,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 159.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 240.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            18.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 186.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildPasswordField(context),
                            SizedBox(height: 17.v),
                            _buildRoleField(context),
                            SizedBox(height: 75.v),
                            _buildLoginRow(context),
                            SizedBox(height: 6.v),
                            Text(
                              "Don’t have an account? Register here",
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 6.v),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle10,
                      height: 145.v,
                      width: 360.h,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    _buildLoginText(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle9,
                      height: 164.v,
                      width: 360.h,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 101.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgHarvesthub,
                      height: 120.v,
                      width: 360.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 225.v),
                    ),
                    _buildUserNameField(context),
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
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: CustomTextFormField(
        controller: passwordFieldController,
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
  Widget _buildRoleField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: CustomTextFormField(
        controller: roleFieldController,
        hintText: "Role",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "LOGIN",
        margin: EdgeInsets.only(
          top: 11.v,
          bottom: 9.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: Row(
          children: [
            _buildLoginButton(context),
            Container(
              height: 57.v,
              width: 42.h,
              margin: EdgeInsets.only(left: 26.h),
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
                    imagePath: ImageConstant.imgFingerprint,
                    height: 57.v,
                    width: 29.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginText(BuildContext context) {
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
              ImageConstant.imgGroup6,
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
  Widget _buildUserNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 307.v),
      child: CustomTextFormField(
        width: 246.h,
        controller: userNameFieldController,
        hintText: "Username",
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
