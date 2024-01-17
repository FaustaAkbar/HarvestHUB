import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatars3dAvatar8,
          height: 58.adaptSize,
          width: 58.adaptSize,
        ),
        Container(
          width: 118.h,
          margin: EdgeInsets.only(
            left: 10.h,
            bottom: 21.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Setiawan\n",
                  style: CustomTextStyles.titleMediumff000000,
                ),
                TextSpan(
                  text: "bisa dikirim hari ini?",
                  style: CustomTextStyles.labelLargeff626262,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 21.v),
          child: Column(
            children: [
              Text(
                "14:57",
                style: CustomTextStyles.labelLargeGray70002,
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(right: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillGreenA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Text(
                    "1",
                    style: CustomTextStyles.labelLargeWhiteA70001,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
