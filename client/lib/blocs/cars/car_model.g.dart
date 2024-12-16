// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      make: json['make'] as String,
      model: json['model'] as String,
      year: (json['year'] as num).toInt(),
      color: json['color'] as String,
      price: (json['price'] as num).toDouble(),
      availabilityStatus: json['availabilityStatus'] as String,
      mileage: (json['mileage'] as num?)?.toDouble(),
      seats: (json['seats'] as num).toInt(),
      fuel: json['fuel'] as String,
      fuelConsumption: (json['fuelConsumption'] as num?)?.toDouble(),
      transmission: json['transmission'] as String,
      category: json['category'] as String,
      frontImage: json['frontImage'] as String?,
      backImage: json['backImage'] as String?,
      sideImage: json['sideImage'] as String?,
      rentalStartDate: json['rentalStartDate'] == null
          ? null
          : DateTime.parse(json['rentalStartDate'] as String),
      rentalEndDate: json['rentalEndDate'] == null
          ? null
          : DateTime.parse(json['rentalEndDate'] as String),
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'color': instance.color,
      'price': instance.price,
      'availabilityStatus': instance.availabilityStatus,
      'mileage': instance.mileage,
      'seats': instance.seats,
      'fuel': instance.fuel,
      'fuelConsumption': instance.fuelConsumption,
      'transmission': instance.transmission,
      'category': instance.category,
      'frontImage': instance.frontImage,
      'backImage': instance.backImage,
      'sideImage': instance.sideImage,
      'rentalStartDate': instance.rentalStartDate?.toIso8601String(),
      'rentalEndDate': instance.rentalEndDate?.toIso8601String(),
    };
