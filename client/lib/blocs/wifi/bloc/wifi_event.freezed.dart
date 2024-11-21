// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wifi_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WifiEvent {
  ConnectivityResult get result => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityResult result) scan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityResult result)? scan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityResult result)? scan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WifiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WifiEventCopyWith<WifiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiEventCopyWith<$Res> {
  factory $WifiEventCopyWith(WifiEvent value, $Res Function(WifiEvent) then) =
      _$WifiEventCopyWithImpl<$Res, WifiEvent>;
  @useResult
  $Res call({ConnectivityResult result});
}

/// @nodoc
class _$WifiEventCopyWithImpl<$Res, $Val extends WifiEvent>
    implements $WifiEventCopyWith<$Res> {
  _$WifiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WifiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanImplCopyWith<$Res> implements $WifiEventCopyWith<$Res> {
  factory _$$ScanImplCopyWith(
          _$ScanImpl value, $Res Function(_$ScanImpl) then) =
      __$$ScanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectivityResult result});
}

/// @nodoc
class __$$ScanImplCopyWithImpl<$Res>
    extends _$WifiEventCopyWithImpl<$Res, _$ScanImpl>
    implements _$$ScanImplCopyWith<$Res> {
  __$$ScanImplCopyWithImpl(_$ScanImpl _value, $Res Function(_$ScanImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ScanImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$ScanImpl implements Scan {
  const _$ScanImpl(this.result);

  @override
  final ConnectivityResult result;

  @override
  String toString() {
    return 'WifiEvent.scan(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of WifiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanImplCopyWith<_$ScanImpl> get copyWith =>
      __$$ScanImplCopyWithImpl<_$ScanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityResult result) scan,
  }) {
    return scan(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityResult result)? scan,
  }) {
    return scan?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityResult result)? scan,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
  }) {
    return scan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
  }) {
    return scan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan(this);
    }
    return orElse();
  }
}

abstract class Scan implements WifiEvent {
  const factory Scan(final ConnectivityResult result) = _$ScanImpl;

  @override
  ConnectivityResult get result;

  /// Create a copy of WifiEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanImplCopyWith<_$ScanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
