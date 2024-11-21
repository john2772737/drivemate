
import 'package:go_router/go_router.dart';
import '../pages/splashScreen.dart';
import '../pages/LoginPage.dart';
final routercon = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: '/',
      builder: ( context,  state) =>const SplashScreen(), 
    ),
     GoRoute(
      path: '/login',
      builder: ( context,  state) => LoginPage(), 
    ),
  ],
);
