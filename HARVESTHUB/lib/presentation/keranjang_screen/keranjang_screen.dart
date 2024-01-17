import '../keranjang_screen/widgets/productlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/app_bar/appbar_subtitle.dart';
import 'package:harvesthub/widgets/app_bar/appbar_trailing_image.dart';
import 'package:harvesthub/widgets/app_bar/custom_app_bar.dart';
import 'package:harvesthub/widgets/custom_elevated_button.dart';
import 'package:harvesthub/widgets/custom_search_view.dart';

class KeranjangScreen extends StatelessWidget {
  KeranjangScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildAppBar(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 4.v,
                    ),
                    child: Column(
                      children: [
                        CustomSearchView(
                          controller: searchController,
                          hintText: "Cari barang",
                          contentPadding: EdgeInsets.only(
                            top: 10.v,
                            right: 30.h,
                            bottom: 10.v,
                          ),
                          borderDecoration:
                              SearchViewStyleHelper.fillLightGreen,
                          fillColor: appTheme.lightGreen300,
                        ),
                        SizedBox(height: 20.v),
                        _buildSelectedProducts(context),
                        SizedBox(height: 17.v),
                        Divider(
                          color: appTheme.black900.withOpacity(0.1),
                          indent: 31.h,
                          endIndent: 31.h,
                        ),
                        SizedBox(height: 15.v),
                        _buildProductList(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBuyButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 62.v,
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Keranjang",
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgUser,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 20.h,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
          Text(
            "<",
            textAlign: TextAlign.center,
            style: theme.textTheme.displayMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectedProducts(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1 produk terpilih",
            style: CustomTextStyles.bodySmall12,
          ),
          Text(
            "Hapus",
            style: CustomTextStyles.labelLargeBluegray900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 9.5.v),
            child: SizedBox(
              width: 262.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.black900.withOpacity(0.1),
              ),
            ),
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ProductlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 26.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 114.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Total Belanja\n",
                    style: CustomTextStyles.bodyLargeff000000_1,
                  ),
                  TextSpan(
                    text: "Rp61.000",
                    style: CustomTextStyles.headlineSmallff000000,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 102.h,
            text: "BELI (10)",
            margin: EdgeInsets.only(
              left: 103.h,
              top: 10.v,
              bottom: 9.v,
            ),
            buttonStyle: CustomButtonStyles.outlineBlackTL12,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001,
          ),
        ],
      ),
    );
  }
}
