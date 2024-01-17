import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 52.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.gray800,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconsCheckSmall,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage5,
          height: 73.adaptSize,
          width: 73.adaptSize,
          radius: BorderRadius.circular(
            6.h,
          ),
          margin: EdgeInsets.only(
            left: 10.h,
            top: 3.v,
          ),
        ),
        Container(
          width: 132.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 3.v,
            bottom: 19.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Bambang Shop\n",
                  style: CustomTextStyles.bodySmallff000000,
                ),
                TextSpan(
                  text: "Jagung manis +-300gr\n",
                  style: CustomTextStyles.labelLargeff000000,
                ),
                TextSpan(
                  text: "Rp6.100",
                  style: CustomTextStyles.titleMediumff000000_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(top: 3.v),
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 9.v,
                width: 1.h,
                decoration: BoxDecoration(
                  color: appTheme.gray70001,
                ),
              ),
              Container(
                height: 1.v,
                width: 9.h,
                decoration: BoxDecoration(
                  color: appTheme.gray70001,
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "10",
                  style: CustomTextStyles.labelLargeGray80001,
                ),
              ),
              SizedBox(height: 15.v),
              Container(
                height: 1.v,
                width: 9.h,
                decoration: BoxDecoration(
                  color: appTheme.gray70001,
                ),
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ],
    );
  }
}
