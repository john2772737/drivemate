import 'package:freezed_annotation/freezed_annotation.dart';
part 'car_model.freezed.dart';
part 'car_model.g.dart';
@freezed
class Car with _$Car {
  const factory Car({
    required String make,
    required String model,
    required int year,
    required String color,
    required double price,
    required String availabilityStatus,
    double? mileage,
    required int seats,
    required String fuel,
    double? fuelConsumption,
    required String transmission,
    required String category,
    String? frontImage,
    String? backImage,
    String? sideImage,
    DateTime? rentalStartDate,
    DateTime? rentalEndDate,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
