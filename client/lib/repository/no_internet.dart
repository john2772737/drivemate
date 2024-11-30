
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:client/pages/NoInternet.dart';


final GoRouter nointernet = GoRouter(
  initialLocation: "/",
  routes: [

    GoRoute(
      path: '/',
      name: '/nointernet',
      builder: (context, state) => NoInternetPage(),
    ),
  ],

);

