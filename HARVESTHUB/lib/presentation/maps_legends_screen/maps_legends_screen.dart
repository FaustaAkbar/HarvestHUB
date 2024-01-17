import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:harvesthub/core/app_export.dart';
import 'package:harvesthub/widgets/app_bar/appbar_leading_image.dart';
import 'package:harvesthub/widgets/app_bar/appbar_title_searchview.dart';
import 'package:harvesthub/widgets/app_bar/custom_app_bar.dart';

class MapsLegendsScreen extends StatelessWidget {
  MapsLegendsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA70001,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgMapsLegends,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 671.v,
            width: 337.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 41.v,
            ),
            child: GoogleMap(
              //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  37.43296265331129,
                  -122.08832357078792,
                ),
                zoom: 14.4746,
              ),
              onMapCreated: (GoogleMapController controller) {
                googleMapController.complete(controller);
              },
              zoomControlsEnabled: false,
              zoomGesturesEnabled: false,
              myLocationButtonEnabled: false,
              myLocationEnabled: false,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
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
    );
  }
}
