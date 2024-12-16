import 'package:freezed_annotation/freezed_annotation.dart';
import 'car_model.dart';

part 'cars_state.freezed.dart';

@freezed
class CarState with _$CarState {
  const factory CarState.initial() = CarInitialState;
  const factory CarState.loading() = CarLoadingState;
  const factory CarState.loaded(List<Car> cars) = CarLoadedState;
  const factory CarState.error(String errorMessage) = CarErrorState;
  const factory CarState.makeLoader(List<dynamic> make) = makeLoader;
}
