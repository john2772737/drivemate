import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:client/pages/splashScreen.dart';
import 'package:client/pages/LoginPage.dart';
import 'package:client/pages/WelcomePage.dart';
import 'package:client/pages/NoInternet.dart';
import 'package:client/pages/HomePage.dart';
import 'package:client/pages/All_cars.dart';
import 'package:client/brand_pages/brand_cars_data.dart';
import 'package:client/brand_pages/BrandCarsPage.dart';
import 'package:client/pages/BillingPage.dart'; // Import BillingPage
import 'package:client/blocs/wifi/bloc/wifi_bloc.dart';
import 'package:client/blocs/wifi/bloc/wifi_state.dart';

final GoRouter routercon = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: '/',
      name: '/splash',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/welcomepage',
      name: '/welcomepage',
      builder: (context, state) => WelcomePage(),
    ),
    GoRoute(
      path: '/login',
      name: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/home',
      name: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/allcars',
      builder: (context, state) => AllCarsPage(),
    ),
    GoRoute(
      path: '/brandCars',
      builder: (context, state) {
        final brandName = state.extra as String;
        return BrandCarsPage(brandName: brandName);
      },
    ),
    GoRoute(
      path: '/billing',
      name: '/billing',
      builder: (context, state) => BillingPage(),
    ),
    GoRoute(
      path: '/nointernet',
      name: '/nointernet',
      builder: (context, state) => NoInternetPage(),
    ),
  ],
);
