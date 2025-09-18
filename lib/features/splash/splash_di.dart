import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/features/splash/domain/splash_viewmodel.dart';
import 'package:mobile_study/features/splash/models/splash_model.dart';
import 'package:mobile_study/core/navigation/navigator_di.dart';

class SplashDi {
  static final splashViewModel =
      StateNotifierProvider<SplashViewModel, SplashModel>((ref) {
        return SplashViewModel(
          appNavigation: ref.read(NavigatorDi.appNavigationProvider),
        );
      });
}
