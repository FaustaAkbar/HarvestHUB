import '../shop_screen/widgets/productcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/app_bar/appbar_leading_image.dart';
import 'package:harvesthub/widgets/app_bar/appbar_title_searchview.dart';
import 'package:harvesthub/widgets/app_bar/custom_app_bar.dart';
import 'package:harvesthub/widgets/custom_elevated_button.dart';
import 'package:harvesthub/widgets/custom_rating_bar.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgShop,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildMenuStack(context),
                SizedBox(height: 1.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.outlineGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 51.h,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle15,
                              height: 81.v,
                              width: 86.h,
                              radius: BorderRadius.circular(
                                22.h,
                              ),
                              margin: EdgeInsets.only(bottom: 5.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 7.h,
                                top: 3.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "Prasetyo Hadi",
                                      style: CustomTextStyles.titleMedium19,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "Owner of PT. Sejahtera Makmur",
                                      style: CustomTextStyles
                                          .labelMediumBlack900_1,
                                    ),
                                  ),
                                  CustomRatingBar(
                                    initialRating: 0,
                                  ),
                                  SizedBox(height: 2.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Row(
                                      children: [
                                        _buildVerifiedUserButton(context),
                                        Container(
                                          height: 27.adaptSize,
                                          width: 27.adaptSize,
                                          margin: EdgeInsets.only(left: 5.h),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 22.v,
                                                  width: 27.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.green900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgChatBubble,
                                                height: 27.v,
                                                width: 20.h,
                                                alignment: Alignment.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "List Produk",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildProductCard(context),
                      SizedBox(height: 61.v),
                      _buildLihatKeranjangRow(context),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuStack(BuildContext context) {
    return SizedBox(
      height: 193.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.only(
                left: 15.h,
                top: 2.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitleSearchview(
              hintText: "Cari produk yang diinginkan",
              controller: searchController,
            ),
            styleType: Style.bgFill,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 132.v,
            width: 90.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 309.h,
                right: 14.h,
                bottom: 69.v,
              ),
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.fillBluegray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Container(
                height: 22.v,
                width: 23.h,
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgInformation,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVerifiedUserButton(BuildContext context) {
    return CustomElevatedButton(
      width: 111.h,
      text: "Verified User",
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 2.v,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 22.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGreen,
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 8.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ProductcardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLihatKeranjangRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillGreen900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 4.v,
              bottom: 1.v,
            ),
            child: Text(
              "Lihat Keranjang",
              style: CustomTextStyles.titleMediumWhiteA7000118,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBasket28x33,
            height: 28.v,
            width: 33.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
