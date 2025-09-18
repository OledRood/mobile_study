import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_study/core/navigation/app_routes.dart';
import 'package:mobile_study/core/navigation/navigator_di.dart';

/// Основной класс для управления навигацией в приложении
class AppNavigation {
  final Ref _ref;

  AppNavigation(this._ref);

  /// Получение экземпляра GoRouter
  GoRouter get _router => _ref.read(NavigatorDi.routerProvider);

  /// Навигация на главную страницу
  void goToHome() {
    _router.go(AppRoutes.home.path);
  }

  /// Навигация на splash страницу
  void goToSplash() {
    _router.go(AppRoutes.splash.path);
  }

  /// Возврат назад
  void goBack() {
    if (_router.canPop()) {
      _router.pop();
    }
  }

  /// Замена текущего маршрута
  void pushReplacement(String path) {
    _router.pushReplacement(path);
  }

  /// Добавление нового маршрута в стек
  void push(String path) {
    _router.push(path);
  }

  /// Переход на маршрут по имени
  void goNamed(String name, {Map<String, String>? pathParameters}) {
    _router.goNamed(name, pathParameters: pathParameters ?? {});
  }

  /// Добавление именованного маршрута в стек
  void pushNamed(String name, {Map<String, String>? pathParameters}) {
    _router.pushNamed(name, pathParameters: pathParameters ?? {});
  }

  /// Замена текущего маршрута на именованный
  void pushReplacementNamed(
    String name, {
    Map<String, String>? pathParameters,
  }) {
    _router.pushReplacementNamed(name, pathParameters: pathParameters ?? {});
  }

  /// Очистка стека и переход на новый маршрут
  void clearStackAndGo(String path) {
    while (_router.canPop()) {
      _router.pop();
    }
    _router.pushReplacement(path);
  }

  /// Получение текущего местоположения
  String get currentLocation =>
      _router.routeInformationProvider.value.uri.toString();

  /// Проверка, можно ли вернуться назад
  bool get canPop => _router.canPop();
}
