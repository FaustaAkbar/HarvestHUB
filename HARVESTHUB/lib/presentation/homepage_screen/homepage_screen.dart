import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/custom_outlined_button.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 467.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector4,
                        height: 281.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46,
                        height: 200.v,
                        width: 360.h,
                        radius: BorderRadius.circular(
                          18.h,
                        ),
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      _buildNotificationSection(context),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 305.h,
                            top: 87.v,
                            right: 7.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgHeadphones,
                                height: 19.v,
                                width: 29.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 5.h),
                              ),
                              SizedBox(
                                width: 48.h,
                                child: Text(
                                  "Customer\nService",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildSalesBalanceSection(context),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 97.h,
                            top: 72.v,
                            right: 90.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgHarvesthub41x173,
                                height: 50.v,
                                width: 173.h,
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Text(
                                  "Saldo Dompet",
                                  style: CustomTextStyles.titleMediumWhiteA700,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text(
                                  "Rp.65.750.000,00",
                                  style:
                                      CustomTextStyles.titleMediumWhiteA70017,
                                ),
                              ),
                              SizedBox(height: 13.v),
                              CustomOutlinedButton(
                                width: 119.h,
                                text: "Dompet lain",
                                margin: EdgeInsets.only(left: 22.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.v),
                _buildTransactionNotesSection(context),
                SizedBox(height: 3.v),
                _buildArrowSection(context),
                SizedBox(height: 23.v),
                _buildNewsSection(context),
                SizedBox(height: 5.v),
                _buildWidgetSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.fillGreen900,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 84.v),
            CustomImageView(
              imagePath: ImageConstant.imgNotification,
              height: 19.v,
              width: 27.h,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSalesBalanceSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 14.h,
          right: 11.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSalesBalance,
                          height: 50.v,
                          width: 66.h,
                        ),
                        SizedBox(height: 11.v),
                        Text(
                          "Isi Saldo",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBasket,
                        height: 69.v,
                        width: 60.h,
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.shopScreen);
                        },
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Keranjang",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.h,
                      top: 9.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSearch,
                          height: 48.v,
                          width: 50.h,
                        ),
                        SizedBox(height: 14.v),
                        Text(
                          "Pengaturan",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 19.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 48.v,
                        width: 50.h,
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.chatTwoScreen);
                        },
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "Chat",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        alignment: Alignment.center,
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.profilScreen);
                        },
                      ),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Profil",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMail,
                        height: 51.v,
                        width: 55.h,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "Peta",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionNotesSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 14.h,
          right: 33.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Catatan Transaksi",
              style: CustomTextStyles.titleMedium18,
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.v),
              child: Text(
                "Lihat detail",
                style: theme.textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowSection(BuildContext context) {
    return SizedBox(
      height: 179.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              decoration: AppDecoration.fillGray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 68.v,
                          width: 126.h,
                          margin: EdgeInsets.only(
                            top: 12.v,
                            bottom: 16.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgDownArrow,
                                height: 27.v,
                                width: 38.h,
                                alignment: Alignment.topRight,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 26.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pemasukan",
                                        style: CustomTextStyles.titleMedium18,
                                      ),
                                      SizedBox(height: 21.v),
                                      Text(
                                        "Rp.500.000",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: SizedBox(
                            height: 97.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                            ),
                          ),
                        ),
                        Container(
                          height: 65.v,
                          width: 136.h,
                          margin: EdgeInsets.only(
                            left: 25.h,
                            top: 15.v,
                            bottom: 15.v,
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUpArrow,
                                height: 24.v,
                                width: 32.h,
                                alignment: Alignment.topRight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 27.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pengeluaran",
                                        style: CustomTextStyles.titleMedium18,
                                      ),
                                      SizedBox(height: 19.v),
                                      Text(
                                        "Rp.300.000",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 109.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text(
                            "Selisih",
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "Rp.200.000",
                          style: CustomTextStyles.titleMediumGreen900,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80.v),
              child: SizedBox(
                width: 336.h,
                child: Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Berita Terkini",
            style: CustomTextStyles.titleMedium18,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Lihat lebih banyak",
              style: theme.textTheme.bodyMedium!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetSection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 12.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle76,
              height: 140.v,
              width: 227.h,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle77,
              height: 140.v,
              width: 221.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle78,
              height: 140.v,
              width: 227.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle79,
              height: 140.v,
              width: 235.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
          ],
        ),
      ),
    );
  }
}

onTapGetStarted(BuildContext context) {}
