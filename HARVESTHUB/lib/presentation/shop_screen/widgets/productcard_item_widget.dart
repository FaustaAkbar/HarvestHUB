import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.outlineGreen900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage6,
            height: 80.v,
            width: 69.h,
            radius: BorderRadius.circular(
              7.h,
            ),
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Beras Rojolele",
                  style: CustomTextStyles.labelLarge13,
                ),
                SizedBox(
                  width: 179.h,
                  child: Text(
                    "Beras Rojolele memiliki bentuk lonjong. Warnanya sendiri terlihat seperti susu tetapi sedikit transparan.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  width: 204.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "Rp10.000,- / kg",
                          style: CustomTextStyles.labelMediumBlack900,
                        ),
                      ),
                      SizedBox(
                        height: 26.v,
                        width: 86.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            CustomElevatedButton(
                              width: 86.h,
                              text: "Add to cart",
                              margin: EdgeInsets.only(top: 1.v),
                              buttonTextStyle: theme.textTheme.labelMedium!,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgFastCart,
                              height: 26.v,
                              width: 15.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 4.h),
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
    );
  }
}
