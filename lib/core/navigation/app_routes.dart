import 'package:go_router/go_router.dart';
import 'package:mobile_study/features/home/ui/home_screen.dart';
import 'package:mobile_study/features/splash/ui/splash_screen.dart';

/// Маршруты приложения
enum AppRoutes {
  splash('/splash'),
  home('/home');

  const AppRoutes(this.path);
  final String path;
}

/// Конфигурация маршрутов для GoRouter
List<RouteBase> get appRoutes => [
  GoRoute(
    path: AppRoutes.splash.path,
    name: AppRoutes.splash.name,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: AppRoutes.home.path,
    name: AppRoutes.home.name,
    builder: (context, state) => const HomeScreen(),
  ),
];

/// Начальный маршрут приложения
String get initialRoute => AppRoutes.splash.path;
