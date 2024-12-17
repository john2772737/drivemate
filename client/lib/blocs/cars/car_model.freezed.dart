// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String? get id => throw _privateConstructorUsedError; // Add the id field
  String get make => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get availabilityStatus => throw _privateConstructorUsedError;
  double? get mileage => throw _privateConstructorUsedError;
  int get seats => throw _privateConstructorUsedError;
  String get fuel => throw _privateConstructorUsedError;
  double? get fuelConsumption => throw _privateConstructorUsedError;
  String get transmission => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get frontImage => throw _privateConstructorUsedError;
  String? get backImage => throw _privateConstructorUsedError;
  String? get sideImage => throw _privateConstructorUsedError;
  DateTime? get rentalStartDate => throw _privateConstructorUsedError;
  DateTime? get rentalEndDate => throw _privateConstructorUsedError;

  /// Serializes this Car to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {String? id,
      String make,
      String model,
      int year,
      String color,
      double price,
      String availabilityStatus,
      double? mileage,
      int seats,
      String fuel,
      double? fuelConsumption,
      String transmission,
      String category,
      String? frontImage,
      String? backImage,
      String? sideImage,
      DateTime? rentalStartDate,
      DateTime? rentalEndDate});
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? make = null,
    Object? model = null,
    Object? year = null,
    Object? color = null,
    Object? price = null,
    Object? availabilityStatus = null,
    Object? mileage = freezed,
    Object? seats = null,
    Object? fuel = null,
    Object? fuelConsumption = freezed,
    Object? transmission = null,
    Object? category = null,
    Object? frontImage = freezed,
    Object? backImage = freezed,
    Object? sideImage = freezed,
    Object? rentalStartDate = freezed,
    Object? rentalEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      availabilityStatus: null == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as double?,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as String,
      fuelConsumption: freezed == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as double?,
      transmission: null == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      frontImage: freezed == frontImage
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backImage: freezed == backImage
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sideImage: freezed == sideImage
          ? _value.sideImage
          : sideImage // ignore: cast_nullable_to_non_nullable
              as String?,
      rentalStartDate: freezed == rentalStartDate
          ? _value.rentalStartDate
          : rentalStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rentalEndDate: freezed == rentalEndDate
          ? _value.rentalEndDate
          : rentalEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarImplCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$CarImplCopyWith(_$CarImpl value, $Res Function(_$CarImpl) then) =
      __$$CarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String make,
      String model,
      int year,
      String color,
      double price,
      String availabilityStatus,
      double? mileage,
      int seats,
      String fuel,
      double? fuelConsumption,
      String transmission,
      String category,
      String? frontImage,
      String? backImage,
      String? sideImage,
      DateTime? rentalStartDate,
      DateTime? rentalEndDate});
}

/// @nodoc
class __$$CarImplCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$CarImpl>
    implements _$$CarImplCopyWith<$Res> {
  __$$CarImplCopyWithImpl(_$CarImpl _value, $Res Function(_$CarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? make = null,
    Object? model = null,
    Object? year = null,
    Object? color = null,
    Object? price = null,
    Object? availabilityStatus = null,
    Object? mileage = freezed,
    Object? seats = null,
    Object? fuel = null,
    Object? fuelConsumption = freezed,
    Object? transmission = null,
    Object? category = null,
    Object? frontImage = freezed,
    Object? backImage = freezed,
    Object? sideImage = freezed,
    Object? rentalStartDate = freezed,
    Object? rentalEndDate = freezed,
  }) {
    return _then(_$CarImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      availabilityStatus: null == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as double?,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as String,
      fuelConsumption: freezed == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as double?,
      transmission: null == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      frontImage: freezed == frontImage
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backImage: freezed == backImage
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sideImage: freezed == sideImage
          ? _value.sideImage
          : sideImage // ignore: cast_nullable_to_non_nullable
              as String?,
      rentalStartDate: freezed == rentalStartDate
          ? _value.rentalStartDate
          : rentalStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rentalEndDate: freezed == rentalEndDate
          ? _value.rentalEndDate
          : rentalEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarImpl implements _Car {
  const _$CarImpl(
      {this.id,
      required this.make,
      required this.model,
      required this.year,
      required this.color,
      required this.price,
      required this.availabilityStatus,
      this.mileage,
      required this.seats,
      required this.fuel,
      this.fuelConsumption,
      required this.transmission,
      required this.category,
      this.frontImage,
      this.backImage,
      this.sideImage,
      this.rentalStartDate,
      this.rentalEndDate});

  factory _$CarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarImplFromJson(json);

  @override
  final String? id;
// Add the id field
  @override
  final String make;
  @override
  final String model;
  @override
  final int year;
  @override
  final String color;
  @override
  final double price;
  @override
  final String availabilityStatus;
  @override
  final double? mileage;
  @override
  final int seats;
  @override
  final String fuel;
  @override
  final double? fuelConsumption;
  @override
  final String transmission;
  @override
  final String category;
  @override
  final String? frontImage;
  @override
  final String? backImage;
  @override
  final String? sideImage;
  @override
  final DateTime? rentalStartDate;
  @override
  final DateTime? rentalEndDate;

  @override
  String toString() {
    return 'Car(id: $id, make: $make, model: $model, year: $year, color: $color, price: $price, availabilityStatus: $availabilityStatus, mileage: $mileage, seats: $seats, fuel: $fuel, fuelConsumption: $fuelConsumption, transmission: $transmission, category: $category, frontImage: $frontImage, backImage: $backImage, sideImage: $sideImage, rentalStartDate: $rentalStartDate, rentalEndDate: $rentalEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            (identical(other.mileage, mileage) || other.mileage == mileage) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.fuel, fuel) || other.fuel == fuel) &&
            (identical(other.fuelConsumption, fuelConsumption) ||
                other.fuelConsumption == fuelConsumption) &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.frontImage, frontImage) ||
                other.frontImage == frontImage) &&
            (identical(other.backImage, backImage) ||
                other.backImage == backImage) &&
            (identical(other.sideImage, sideImage) ||
                other.sideImage == sideImage) &&
            (identical(other.rentalStartDate, rentalStartDate) ||
                other.rentalStartDate == rentalStartDate) &&
            (identical(other.rentalEndDate, rentalEndDate) ||
                other.rentalEndDate == rentalEndDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      make,
      model,
      year,
      color,
      price,
      availabilityStatus,
      mileage,
      seats,
      fuel,
      fuelConsumption,
      transmission,
      category,
      frontImage,
      backImage,
      sideImage,
      rentalStartDate,
      rentalEndDate);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      __$$CarImplCopyWithImpl<_$CarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarImplToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  const factory _Car(
      {final String? id,
      required final String make,
      required final String model,
      required final int year,
      required final String color,
      required final double price,
      required final String availabilityStatus,
      final double? mileage,
      required final int seats,
      required final String fuel,
      final double? fuelConsumption,
      required final String transmission,
      required final String category,
      final String? frontImage,
      final String? backImage,
      final String? sideImage,
      final DateTime? rentalStartDate,
      final DateTime? rentalEndDate}) = _$CarImpl;

  factory _Car.fromJson(Map<String, dynamic> json) = _$CarImpl.fromJson;

  @override
  String? get id; // Add the id field
  @override
  String get make;
  @override
  String get model;
  @override
  int get year;
  @override
  String get color;
  @override
  double get price;
  @override
  String get availabilityStatus;
  @override
  double? get mileage;
  @override
  int get seats;
  @override
  String get fuel;
  @override
  double? get fuelConsumption;
  @override
  String get transmission;
  @override
  String get category;
  @override
  String? get frontImage;
  @override
  String? get backImage;
  @override
  String? get sideImage;
  @override
  DateTime? get rentalStartDate;
  @override
  DateTime? get rentalEndDate;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
