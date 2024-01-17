import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/app_bar/appbar_subtitle.dart';
import 'package:harvesthub/widgets/app_bar/appbar_title.dart';
import 'package:harvesthub/widgets/app_bar/custom_app_bar.dart';
import 'package:harvesthub/widgets/custom_icon_button.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 39.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 126.h,
                      margin: EdgeInsets.only(
                        top: 11.v,
                        bottom: 17.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Muhtar\n",
                              style: CustomTextStyles.headlineSmallff000000_1,
                            ),
                            TextSpan(
                              text: "+6285243765203",
                              style: CustomTextStyles.bodyLargeff000000,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatars3dAvatar1,
                      height: 76.adaptSize,
                      width: 76.adaptSize,
                      radius: BorderRadius.circular(
                        38.h,
                      ),
                      margin: EdgeInsets.only(left: 55.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: _buildRecentOrders(
                  context,
                  textLabel: "Pengaturan Akun",
                  arrowText: "<",
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: _buildRecentOrders(
                  context,
                  textLabel: "Riwayat Pemesanan",
                  arrowText: "<",
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 32.h,
                ),
                child: _buildUserProfile(
                  context,
                  paymentMethodText: "Notifikasi",
                  backButtonText: "<",
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 32.h,
                ),
                child: _buildUserProfile(
                  context,
                  paymentMethodText: "Metode Pembayaran",
                  backButtonText: "<",
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 32.h,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillGray800.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Text(
                        "?",
                        style: CustomTextStyles.titleSmallNunitoSans,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 10.v,
                        bottom: 12.v,
                      ),
                      child: Text(
                        "Bantuan",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "<",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 101.v,
      title: Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "<",
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.homepageScreen);
              },
            ),
            AppbarSubtitle(
              text: "Profil Saya",
              margin: EdgeInsets.only(
                left: 77.h,
                top: 19.v,
                bottom: 13.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String textLabel,
    required String arrowText,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClock,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 12.v,
            bottom: 10.v,
          ),
          child: Text(
            textLabel,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        Text(
          arrowText,
          style: theme.textTheme.headlineLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String paymentMethodText,
    required String backButtonText,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTelevision,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 11.v,
            bottom: 11.v,
          ),
          child: Text(
            paymentMethodText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        Text(
          backButtonText,
          style: theme.textTheme.headlineLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
