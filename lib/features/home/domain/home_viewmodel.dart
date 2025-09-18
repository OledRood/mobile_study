import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/core/navigation/app_navigation.dart';
import '../models/home_model.dart';

enum ServerState { longLoading, error, success, fastSuccess }

const serverState = ServerState.success;

//TODO: Нужна проверка на вход в систему

class HomeViewModel extends StateNotifier<HomeModel> {
  final AppNavigation appNavigation;

  HomeViewModel({required this.appNavigation})
    : super(const HomeModel(isLoading: true));
}
