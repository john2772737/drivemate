import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:client/pages/splashScreen.dart';
import 'package:client/pages/LoginPage.dart';
import 'package:client/pages/WelcomePage.dart';
import 'package:client/pages/NoInternet.dart';
import 'package:client/pages/HomePage.dart';
import 'package:client/pages/All_cars.dart';
import 'package:client/pages/BillingPage.dart';
import 'package:client/brand_pages/brand_cars_data.dart';
import 'package:client/pages/PropertiesPage.dart';
import 'package:client/brand_pages/BrandCarsPage.dart';
import 'auth.dart'; // Import your AuthService
import '../blocs/cars/car_model.dart';
final GoRouter routercon = GoRouter(
  initialLocation: "/billing",
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
      path: '/billing',
      name: '/billing',
      builder: (context, state) => BillingPage(),
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
    GoRoute(
      path: '/propertypage',
      name: '/propertypage',
      builder: (context, state) {
     final car = state.extra as Car; // Get the car object from the extra property
        return CarProperty(car: car);
      },
 
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
