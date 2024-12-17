import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_event.freezed.dart';

@freezed
class CarEvent with _$CarEvent {
  const factory CarEvent.fetchCars() = FetchCarsEvent;
  const factory CarEvent.getDistinctMake() = getDistinctMakeEvent;
   const factory CarEvent.getCarsbyBrand(String brand) = GetCarsbyBrandEvent;
   const factory CarEvent.getCarsbyId(String id) = GetCarsbyIdEvent;
}
