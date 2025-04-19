import 'package:go_router/go_router.dart';
import 'package:grabber_grocery_app/Views/home_view.dart';
import 'package:grabber_grocery_app/Views/splash_view.dart';

class AppRouter {
  // static const String splashView = '/';
  static const String homeView = '/';

  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // GoRoute(
      //   path: splashView,
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: homeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
