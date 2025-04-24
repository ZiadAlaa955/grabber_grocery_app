import 'package:go_router/go_router.dart';
import 'package:grabber_grocery_app/Views/cart_view.dart';
import 'package:grabber_grocery_app/Views/home_view.dart';
import 'package:grabber_grocery_app/Views/splash_view.dart';

class AppRouter {
  // static const String splashView = '/';
  static const String homeView = '/';
  static const String cartView = '/cartView';

  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // GoRoute(
      //   path: splashView,
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: cartView,
        builder: (context, state) => const CartView(),
      ),
    ],
  );
}
