// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wifi_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WifiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() noInternet,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? noInternet,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(noInternet value) noInternet,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(noInternet value)? noInternet,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(noInternet value)? noInternet,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiStateCopyWith<$Res> {
  factory $WifiStateCopyWith(WifiState value, $Res Function(WifiState) then) =
      _$WifiStateCopyWithImpl<$Res, WifiState>;
}

/// @nodoc
class _$WifiStateCopyWithImpl<$Res, $Val extends WifiState>
    implements $WifiStateCopyWith<$Res> {
  _$WifiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WifiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WifiStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WifiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() noInternet,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? noInternet,
    TResult Function()? loading,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(noInternet value) noInternet,
    required TResult Function(Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(noInternet value)? noInternet,
    TResult? Function(Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(noInternet value)? noInternet,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WifiState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$WifiStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectedImpl implements Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'WifiState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() noInternet,
    required TResult Function() loading,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? noInternet,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(noInternet value) noInternet,
    required TResult Function(Loading value) loading,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(noInternet value)? noInternet,
    TResult? Function(Loading value)? loading,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(noInternet value)? noInternet,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements WifiState {
  const factory Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$WifiStateCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectedImpl implements Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'WifiState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() noInternet,
    required TResult Function() loading,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? noInternet,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(noInternet value) noInternet,
    required TResult Function(Loading value) loading,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(noInternet value)? noInternet,
    TResult? Function(Loading value)? loading,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(noInternet value)? noInternet,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements WifiState {
  const factory Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$noInternetImplCopyWith<$Res> {
  factory _$$noInternetImplCopyWith(
          _$noInternetImpl value, $Res Function(_$noInternetImpl) then) =
      __$$noInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$noInternetImplCopyWithImpl<$Res>
    extends _$WifiStateCopyWithImpl<$Res, _$noInternetImpl>
    implements _$$noInternetImplCopyWith<$Res> {
  __$$noInternetImplCopyWithImpl(
      _$noInternetImpl _value, $Res Function(_$noInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$noInternetImpl implements noInternet {
  const _$noInternetImpl();

  @override
  String toString() {
    return 'WifiState.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$noInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() noInternet,
    required TResult Function() loading,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? noInternet,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(noInternet value) noInternet,
    required TResult Function(Loading value) loading,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(noInternet value)? noInternet,
    TResult? Function(Loading value)? loading,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(noInternet value)? noInternet,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class noInternet implements WifiState {
  const factory noInternet() = _$noInternetImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$WifiStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WifiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() noInternet,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? noInternet,
    TResult Function()? loading,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(noInternet value) noInternet,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(noInternet value)? noInternet,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(noInternet value)? noInternet,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements WifiState {
  const factory Loading() = _$LoadingImpl;
}
