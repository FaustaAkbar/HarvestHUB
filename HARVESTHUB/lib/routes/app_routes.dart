import 'package:flutter/material.dart';
import 'package:harvesthub/presentation/login_page_screen/login_page_screen.dart';
import 'package:harvesthub/presentation/homepage_screen/homepage_screen.dart';
import 'package:harvesthub/presentation/maps_legends_screen/maps_legends_screen.dart';
import 'package:harvesthub/presentation/shop_screen/shop_screen.dart';
import 'package:harvesthub/presentation/profil_screen/profil_screen.dart';
import 'package:harvesthub/presentation/keranjang_screen/keranjang_screen.dart';
import 'package:harvesthub/presentation/chat_screen/chat_screen.dart';
import 'package:harvesthub/presentation/chat_two_screen/chat_two_screen.dart';
import 'package:harvesthub/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String mapsLegendsScreen = '/maps_legends_screen';

  static const String shopScreen = '/shop_screen';

  static const String profilScreen = '/profil_screen';

  static const String keranjangScreen = '/keranjang_screen';

  static const String chatScreen = '/chat_screen';

  static const String chatTwoScreen = '/chat_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginPageScreen: (context) => LoginPageScreen(),
    homepageScreen: (context) => HomepageScreen(),
    mapsLegendsScreen: (context) => MapsLegendsScreen(),
    shopScreen: (context) => ShopScreen(),
    profilScreen: (context) => ProfilScreen(),
    keranjangScreen: (context) => KeranjangScreen(),
    chatScreen: (context) => ChatScreen(),
    chatTwoScreen: (context) => ChatTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
