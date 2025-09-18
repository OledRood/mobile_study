import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/core/navigation/app_navigation.dart';
import '../models/splash_model.dart';

class SplashViewModel extends StateNotifier<SplashModel> {
  final AppNavigation appNavigation;

  SplashViewModel({required this.appNavigation})
    : super(const SplashModel(isLoading: true)) {
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    print('splash finished');
    goToHome();
  }

  void goToHome() {
    appNavigation.goToHome();
  }
}
