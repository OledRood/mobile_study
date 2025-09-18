import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_model.freezed.dart';

enum ServerRequestState { loading, success, error }

@freezed
sealed class SplashModel with _$SplashModel {
  const factory SplashModel({@Default(false) bool isLoading}) = _SplashModel;
}
