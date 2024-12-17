import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:client/pages/splashScreen.dart';
import 'package:client/pages/LoginPage.dart';
import 'package:client/pages/WelcomePage.dart';
import 'package:client/pages/NoInternet.dart';
import 'package:client/pages/HomePage.dart';
import 'package:client/pages/All_cars.dart';
import 'package:client/brand_pages/brand_cars_data.dart';
import 'package:client/brand_pages/BrandCarsPage.dart';
import 'auth.dart'; // Import your AuthService

final GoRouter routercon = GoRouter(
  initialLocation: "/welcomepage",
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
      builder: (context, state) {
        final brandName = state.extra as String;
        return AllCarsPage();
      },
    ),
    GoRoute(
      path: '/brandCars',
      builder: (context, state) {
        final brandName = state.extra as String;
        return BrandCarsPage(brandName: brandName);
      },
    ),
    GoRoute(
      path: '/nointernet',
      name: '/nointernet',
      builder: (context, state) => NoInternetPage(),
    ),
  ],
  redirect: (BuildContext context, GoRouterState state) {
    final authService = AuthService();  // Get the AuthService instance
    final isAuthenticated = authService.currentUser != null;  // Check if user is authenticated

    // Redirect to login page if user is not authenticated and not already on the login page
    if (!isAuthenticated && state.matchedLocation  != '/login') {
      return '/login';
    }

    // Allow navigation to home if authenticated or already on the login page
    return null; // No redirection needed
  },
);
