// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeModel {

 String? get priceCardPath; String get selectedStore; List<String>? get personalButtons; bool get isLoading; String? get errorMessage; ServerRequestState get serverRequestState; bool get isDiscountCardOpen;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&(identical(other.priceCardPath, priceCardPath) || other.priceCardPath == priceCardPath)&&(identical(other.selectedStore, selectedStore) || other.selectedStore == selectedStore)&&const DeepCollectionEquality().equals(other.personalButtons, personalButtons)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.serverRequestState, serverRequestState) || other.serverRequestState == serverRequestState)&&(identical(other.isDiscountCardOpen, isDiscountCardOpen) || other.isDiscountCardOpen == isDiscountCardOpen));
}


@override
int get hashCode => Object.hash(runtimeType,priceCardPath,selectedStore,const DeepCollectionEquality().hash(personalButtons),isLoading,errorMessage,serverRequestState,isDiscountCardOpen);

@override
String toString() {
  return 'HomeModel(priceCardPath: $priceCardPath, selectedStore: $selectedStore, personalButtons: $personalButtons, isLoading: $isLoading, errorMessage: $errorMessage, serverRequestState: $serverRequestState, isDiscountCardOpen: $isDiscountCardOpen)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
 String? priceCardPath, String selectedStore, List<String>? personalButtons, bool isLoading, String? errorMessage, ServerRequestState serverRequestState, bool isDiscountCardOpen
});




}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? priceCardPath = freezed,Object? selectedStore = null,Object? personalButtons = freezed,Object? isLoading = null,Object? errorMessage = freezed,Object? serverRequestState = null,Object? isDiscountCardOpen = null,}) {
  return _then(_self.copyWith(
priceCardPath: freezed == priceCardPath ? _self.priceCardPath : priceCardPath // ignore: cast_nullable_to_non_nullable
as String?,selectedStore: null == selectedStore ? _self.selectedStore : selectedStore // ignore: cast_nullable_to_non_nullable
as String,personalButtons: freezed == personalButtons ? _self.personalButtons : personalButtons // ignore: cast_nullable_to_non_nullable
as List<String>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,serverRequestState: null == serverRequestState ? _self.serverRequestState : serverRequestState // ignore: cast_nullable_to_non_nullable
as ServerRequestState,isDiscountCardOpen: null == isDiscountCardOpen ? _self.isDiscountCardOpen : isDiscountCardOpen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? priceCardPath,  String selectedStore,  List<String>? personalButtons,  bool isLoading,  String? errorMessage,  ServerRequestState serverRequestState,  bool isDiscountCardOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.priceCardPath,_that.selectedStore,_that.personalButtons,_that.isLoading,_that.errorMessage,_that.serverRequestState,_that.isDiscountCardOpen);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? priceCardPath,  String selectedStore,  List<String>? personalButtons,  bool isLoading,  String? errorMessage,  ServerRequestState serverRequestState,  bool isDiscountCardOpen)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.priceCardPath,_that.selectedStore,_that.personalButtons,_that.isLoading,_that.errorMessage,_that.serverRequestState,_that.isDiscountCardOpen);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? priceCardPath,  String selectedStore,  List<String>? personalButtons,  bool isLoading,  String? errorMessage,  ServerRequestState serverRequestState,  bool isDiscountCardOpen)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.priceCardPath,_that.selectedStore,_that.personalButtons,_that.isLoading,_that.errorMessage,_that.serverRequestState,_that.isDiscountCardOpen);case _:
  return null;

}
}

}

/// @nodoc


class _HomeModel implements HomeModel {
  const _HomeModel({this.priceCardPath, this.selectedStore = 'Выбрать', final  List<String>? personalButtons, this.isLoading = false, this.errorMessage, this.serverRequestState = ServerRequestState.loading, this.isDiscountCardOpen = true}): _personalButtons = personalButtons;
  

@override final  String? priceCardPath;
@override@JsonKey() final  String selectedStore;
 final  List<String>? _personalButtons;
@override List<String>? get personalButtons {
  final value = _personalButtons;
  if (value == null) return null;
  if (_personalButtons is EqualUnmodifiableListView) return _personalButtons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override@JsonKey() final  ServerRequestState serverRequestState;
@override@JsonKey() final  bool isDiscountCardOpen;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&(identical(other.priceCardPath, priceCardPath) || other.priceCardPath == priceCardPath)&&(identical(other.selectedStore, selectedStore) || other.selectedStore == selectedStore)&&const DeepCollectionEquality().equals(other._personalButtons, _personalButtons)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.serverRequestState, serverRequestState) || other.serverRequestState == serverRequestState)&&(identical(other.isDiscountCardOpen, isDiscountCardOpen) || other.isDiscountCardOpen == isDiscountCardOpen));
}


@override
int get hashCode => Object.hash(runtimeType,priceCardPath,selectedStore,const DeepCollectionEquality().hash(_personalButtons),isLoading,errorMessage,serverRequestState,isDiscountCardOpen);

@override
String toString() {
  return 'HomeModel(priceCardPath: $priceCardPath, selectedStore: $selectedStore, personalButtons: $personalButtons, isLoading: $isLoading, errorMessage: $errorMessage, serverRequestState: $serverRequestState, isDiscountCardOpen: $isDiscountCardOpen)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
 String? priceCardPath, String selectedStore, List<String>? personalButtons, bool isLoading, String? errorMessage, ServerRequestState serverRequestState, bool isDiscountCardOpen
});




}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? priceCardPath = freezed,Object? selectedStore = null,Object? personalButtons = freezed,Object? isLoading = null,Object? errorMessage = freezed,Object? serverRequestState = null,Object? isDiscountCardOpen = null,}) {
  return _then(_HomeModel(
priceCardPath: freezed == priceCardPath ? _self.priceCardPath : priceCardPath // ignore: cast_nullable_to_non_nullable
as String?,selectedStore: null == selectedStore ? _self.selectedStore : selectedStore // ignore: cast_nullable_to_non_nullable
as String,personalButtons: freezed == personalButtons ? _self._personalButtons : personalButtons // ignore: cast_nullable_to_non_nullable
as List<String>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,serverRequestState: null == serverRequestState ? _self.serverRequestState : serverRequestState // ignore: cast_nullable_to_non_nullable
as ServerRequestState,isDiscountCardOpen: null == isDiscountCardOpen ? _self.isDiscountCardOpen : isDiscountCardOpen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
