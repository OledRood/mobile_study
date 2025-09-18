import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/core/navigation/navigator_di.dart';
import 'package:mobile_study/core/navigation/app_navigation.dart';

/// Пример как подключать навигацию в других DI файлах
class ExampleUsageDi {
  /// Любой сервис может получить доступ к навигации через NavigatorDi
  static final exampleServiceProvider = Provider<ExampleService>((ref) {
    return ExampleService(
      appNavigation: ref.read(NavigatorDi.appNavigationProvider),
    );
  });

  /// ViewModel тоже может получить навигацию
  static final exampleViewModelProvider =
      StateNotifierProvider<ExampleViewModel, String>((ref) {
        return ExampleViewModel(
          appNavigation: ref.read(NavigatorDi.appNavigationProvider),
        );
      });
}

/// Пример сервиса, который использует навигацию
class ExampleService {
  final AppNavigation appNavigation;

  ExampleService({required this.appNavigation});

  void navigateToHome() {
    appNavigation.goToHome();
  }

  void navigateToSplash() {
    appNavigation.goToSplash();
  }
}

/// Пример ViewModel с навигацией
class ExampleViewModel extends StateNotifier<String> {
  final AppNavigation appNavigation;

  ExampleViewModel({required this.appNavigation}) : super('initial');

  void goToHomeScreen() {
    appNavigation.goToHome();
    state = 'navigated to home';
  }

  void goToSplashScreen() {
    appNavigation.goToSplash();
    state = 'navigated to splash';
  }
}
