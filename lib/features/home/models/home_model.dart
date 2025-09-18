import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';

enum ServerRequestState { loading, success, error }

@freezed
sealed class HomeModel with _$HomeModel {
  const factory HomeModel({
    String? priceCardPath,
    @Default('Выбрать') String selectedStore,
    List<String>? personalButtons,

    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(ServerRequestState.loading) ServerRequestState serverRequestState,
    @Default(true) bool isDiscountCardOpen,
  }) = _HomeModel;
}
