import '../chat_screen/widgets/viewhierarchy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/app_bar/appbar_subtitle.dart';
import 'package:harvesthub/widgets/app_bar/appbar_trailing_image.dart';
import 'package:harvesthub/widgets/app_bar/custom_app_bar.dart';
import 'package:harvesthub/widgets/custom_search_view.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildAppBar(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 4.v,
                ),
                child: Column(
                  children: [
                    CustomSearchView(
                      controller: searchController,
                      hintText: "Cari pengguna",
                      contentPadding: EdgeInsets.only(
                        top: 10.v,
                        right: 30.h,
                        bottom: 10.v,
                      ),
                      borderDecoration: SearchViewStyleHelper.fillLightGreen,
                      fillColor: appTheme.lightGreen300,
                    ),
                    SizedBox(height: 19.v),
                    _buildViewHierarchy(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 62.v,
            title: AppbarSubtitle(
              text: "Chat",
              margin: EdgeInsets.only(left: 141.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgImage1,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
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
  Widget _buildViewHierarchy(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
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
      itemCount: 4,
      itemBuilder: (context, index) {
        return ViewhierarchyItemWidget();
      },
    );
  }
}
