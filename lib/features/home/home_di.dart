import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/core/navigation/navigator_di.dart';
import 'domain/home_viewmodel.dart';
import 'models/home_model.dart';

class HomeDi {
  HomeDi._();

  static final homeViewModel = StateNotifierProvider<HomeViewModel, HomeModel>(
    (ref) => HomeViewModel(
      appNavigation: ref.read(NavigatorDi.appNavigationProvider),
    ),
  );
}
