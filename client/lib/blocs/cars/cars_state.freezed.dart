// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Car> cars) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<dynamic> make) makeLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Car> cars)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<dynamic> make)? makeLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Car> cars)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(List<dynamic> make)? makeLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CarInitialState value) initial,
    required TResult Function(CarLoadingState value) loading,
    required TResult Function(CarLoadedState value) loaded,
    required TResult Function(CarErrorState value) error,
    required TResult Function(makeLoader value) makeLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CarInitialState value)? initial,
    TResult? Function(CarLoadingState value)? loading,
    TResult? Function(CarLoadedState value)? loaded,
    TResult? Function(CarErrorState value)? error,
    TResult? Function(makeLoader value)? makeLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CarInitialState value)? initial,
    TResult Function(CarLoadingState value)? loading,
    TResult Function(CarLoadedState value)? loaded,
    TResult Function(CarErrorState value)? error,
    TResult Function(makeLoader value)? makeLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarStateCopyWith<$Res> {
  factory $CarStateCopyWith(CarState value, $Res Function(CarState) then) =
      _$CarStateCopyWithImpl<$Res, CarState>;
}

/// @nodoc
class _$CarStateCopyWithImpl<$Res, $Val extends CarState>
    implements $CarStateCopyWith<$Res> {
  _$CarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CarInitialStateImplCopyWith<$Res> {
  factory _$$CarInitialStateImplCopyWith(_$CarInitialStateImpl value,
          $Res Function(_$CarInitialStateImpl) then) =
      __$$CarInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CarInitialStateImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarInitialStateImpl>
    implements _$$CarInitialStateImplCopyWith<$Res> {
  __$$CarInitialStateImplCopyWithImpl(
      _$CarInitialStateImpl _value, $Res Function(_$CarInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CarInitialStateImpl implements CarInitialState {
  const _$CarInitialStateImpl();

  @override
  String toString() {
    return 'CarState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CarInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Car> cars) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<dynamic> make) makeLoader,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Car> cars)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<dynamic> make)? makeLoader,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Car> cars)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(List<dynamic> make)? makeLoader,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CarInitialState value) initial,
    required TResult Function(CarLoadingState value) loading,
    required TResult Function(CarLoadedState value) loaded,
    required TResult Function(CarErrorState value) error,
    required TResult Function(makeLoader value) makeLoader,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CarInitialState value)? initial,
    TResult? Function(CarLoadingState value)? loading,
    TResult? Function(CarLoadedState value)? loaded,
    TResult? Function(CarErrorState value)? error,
    TResult? Function(makeLoader value)? makeLoader,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CarInitialState value)? initial,
    TResult Function(CarLoadingState value)? loading,
    TResult Function(CarLoadedState value)? loaded,
    TResult Function(CarErrorState value)? error,
    TResult Function(makeLoader value)? makeLoader,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CarInitialState implements CarState {
  const factory CarInitialState() = _$CarInitialStateImpl;
}

/// @nodoc
abstract class _$$CarLoadingStateImplCopyWith<$Res> {
  factory _$$CarLoadingStateImplCopyWith(_$CarLoadingStateImpl value,
          $Res Function(_$CarLoadingStateImpl) then) =
      __$$CarLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CarLoadingStateImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarLoadingStateImpl>
    implements _$$CarLoadingStateImplCopyWith<$Res> {
  __$$CarLoadingStateImplCopyWithImpl(
      _$CarLoadingStateImpl _value, $Res Function(_$CarLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CarLoadingStateImpl implements CarLoadingState {
  const _$CarLoadingStateImpl();

  @override
  String toString() {
    return 'CarState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CarLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Car> cars) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<dynamic> make) makeLoader,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Car> cars)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<dynamic> make)? makeLoader,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Car> cars)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(List<dynamic> make)? makeLoader,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CarInitialState value) initial,
    required TResult Function(CarLoadingState value) loading,
    required TResult Function(CarLoadedState value) loaded,
    required TResult Function(CarErrorState value) error,
    required TResult Function(makeLoader value) makeLoader,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CarInitialState value)? initial,
    TResult? Function(CarLoadingState value)? loading,
    TResult? Function(CarLoadedState value)? loaded,
    TResult? Function(CarErrorState value)? error,
    TResult? Function(makeLoader value)? makeLoader,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CarInitialState value)? initial,
    TResult Function(CarLoadingState value)? loading,
    TResult Function(CarLoadedState value)? loaded,
    TResult Function(CarErrorState value)? error,
    TResult Function(makeLoader value)? makeLoader,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CarLoadingState implements CarState {
  const factory CarLoadingState() = _$CarLoadingStateImpl;
}

/// @nodoc
abstract class _$$CarLoadedStateImplCopyWith<$Res> {
  factory _$$CarLoadedStateImplCopyWith(_$CarLoadedStateImpl value,
          $Res Function(_$CarLoadedStateImpl) then) =
      __$$CarLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarLoadedStateImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarLoadedStateImpl>
    implements _$$CarLoadedStateImplCopyWith<$Res> {
  __$$CarLoadedStateImplCopyWithImpl(
      _$CarLoadedStateImpl _value, $Res Function(_$CarLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarLoadedStateImpl(
      null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$CarLoadedStateImpl implements CarLoadedState {
  const _$CarLoadedStateImpl(final List<Car> cars) : _cars = cars;

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarState.loaded(cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarLoadedStateImplCopyWith<_$CarLoadedStateImpl> get copyWith =>
      __$$CarLoadedStateImplCopyWithImpl<_$CarLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Car> cars) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<dynamic> make) makeLoader,
  }) {
    return loaded(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Car> cars)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<dynamic> make)? makeLoader,
  }) {
    return loaded?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Car> cars)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(List<dynamic> make)? makeLoader,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CarInitialState value) initial,
    required TResult Function(CarLoadingState value) loading,
    required TResult Function(CarLoadedState value) loaded,
    required TResult Function(CarErrorState value) error,
    required TResult Function(makeLoader value) makeLoader,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CarInitialState value)? initial,
    TResult? Function(CarLoadingState value)? loading,
    TResult? Function(CarLoadedState value)? loaded,
    TResult? Function(CarErrorState value)? error,
    TResult? Function(makeLoader value)? makeLoader,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CarInitialState value)? initial,
    TResult Function(CarLoadingState value)? loading,
    TResult Function(CarLoadedState value)? loaded,
    TResult Function(CarErrorState value)? error,
    TResult Function(makeLoader value)? makeLoader,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CarLoadedState implements CarState {
  const factory CarLoadedState(final List<Car> cars) = _$CarLoadedStateImpl;

  List<Car> get cars;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarLoadedStateImplCopyWith<_$CarLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarErrorStateImplCopyWith<$Res> {
  factory _$$CarErrorStateImplCopyWith(
          _$CarErrorStateImpl value, $Res Function(_$CarErrorStateImpl) then) =
      __$$CarErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CarErrorStateImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarErrorStateImpl>
    implements _$$CarErrorStateImplCopyWith<$Res> {
  __$$CarErrorStateImplCopyWithImpl(
      _$CarErrorStateImpl _value, $Res Function(_$CarErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CarErrorStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CarErrorStateImpl implements CarErrorState {
  const _$CarErrorStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CarState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarErrorStateImplCopyWith<_$CarErrorStateImpl> get copyWith =>
      __$$CarErrorStateImplCopyWithImpl<_$CarErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Car> cars) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<dynamic> make) makeLoader,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Car> cars)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<dynamic> make)? makeLoader,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Car> cars)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(List<dynamic> make)? makeLoader,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CarInitialState value) initial,
    required TResult Function(CarLoadingState value) loading,
    required TResult Function(CarLoadedState value) loaded,
    required TResult Function(CarErrorState value) error,
    required TResult Function(makeLoader value) makeLoader,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CarInitialState value)? initial,
    TResult? Function(CarLoadingState value)? loading,
    TResult? Function(CarLoadedState value)? loaded,
    TResult? Function(CarErrorState value)? error,
    TResult? Function(makeLoader value)? makeLoader,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CarInitialState value)? initial,
    TResult Function(CarLoadingState value)? loading,
    TResult Function(CarLoadedState value)? loaded,
    TResult Function(CarErrorState value)? error,
    TResult Function(makeLoader value)? makeLoader,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CarErrorState implements CarState {
  const factory CarErrorState(final String errorMessage) = _$CarErrorStateImpl;

  String get errorMessage;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarErrorStateImplCopyWith<_$CarErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$makeLoaderImplCopyWith<$Res> {
  factory _$$makeLoaderImplCopyWith(
          _$makeLoaderImpl value, $Res Function(_$makeLoaderImpl) then) =
      __$$makeLoaderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> make});
}

/// @nodoc
class __$$makeLoaderImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$makeLoaderImpl>
    implements _$$makeLoaderImplCopyWith<$Res> {
  __$$makeLoaderImplCopyWithImpl(
      _$makeLoaderImpl _value, $Res Function(_$makeLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? make = null,
  }) {
    return _then(_$makeLoaderImpl(
      null == make
          ? _value._make
          : make // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$makeLoaderImpl implements makeLoader {
  const _$makeLoaderImpl(final List<dynamic> make) : _make = make;

  final List<dynamic> _make;
  @override
  List<dynamic> get make {
    if (_make is EqualUnmodifiableListView) return _make;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_make);
  }

  @override
  String toString() {
    return 'CarState.makeLoader(make: $make)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$makeLoaderImpl &&
            const DeepCollectionEquality().equals(other._make, _make));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_make));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$makeLoaderImplCopyWith<_$makeLoaderImpl> get copyWith =>
      __$$makeLoaderImplCopyWithImpl<_$makeLoaderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Car> cars) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<dynamic> make) makeLoader,
  }) {
    return makeLoader(make);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Car> cars)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<dynamic> make)? makeLoader,
  }) {
    return makeLoader?.call(make);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Car> cars)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(List<dynamic> make)? makeLoader,
    required TResult orElse(),
  }) {
    if (makeLoader != null) {
      return makeLoader(make);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CarInitialState value) initial,
    required TResult Function(CarLoadingState value) loading,
    required TResult Function(CarLoadedState value) loaded,
    required TResult Function(CarErrorState value) error,
    required TResult Function(makeLoader value) makeLoader,
  }) {
    return makeLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CarInitialState value)? initial,
    TResult? Function(CarLoadingState value)? loading,
    TResult? Function(CarLoadedState value)? loaded,
    TResult? Function(CarErrorState value)? error,
    TResult? Function(makeLoader value)? makeLoader,
  }) {
    return makeLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CarInitialState value)? initial,
    TResult Function(CarLoadingState value)? loading,
    TResult Function(CarLoadedState value)? loaded,
    TResult Function(CarErrorState value)? error,
    TResult Function(makeLoader value)? makeLoader,
    required TResult orElse(),
  }) {
    if (makeLoader != null) {
      return makeLoader(this);
    }
    return orElse();
  }
}

abstract class makeLoader implements CarState {
  const factory makeLoader(final List<dynamic> make) = _$makeLoaderImpl;

  List<dynamic> get make;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$makeLoaderImplCopyWith<_$makeLoaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
