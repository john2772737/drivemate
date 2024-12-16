import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_event.freezed.dart';

@freezed
class CarEvent with _$CarEvent {
  const factory CarEvent.fetchCars() = FetchCarsEvent;
  const factory CarEvent.getDistinctMake() = getDistinctMake;
}
