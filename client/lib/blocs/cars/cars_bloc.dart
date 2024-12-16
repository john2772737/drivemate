import 'package:bloc/bloc.dart';

import 'cars_event.dart';
import 'cars_state.dart';
import 'car_repo.dart';  // Assuming you have CarService to fetch data
import 'car_model.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final CarService carService;

  CarBloc({required this.carService}) : super(const CarState.initial()) {
    on<CarEvent>((event, emit) async {
      await event.map(
        fetchCars: (_) async {
          emit(const CarState.loading());
          try {
            final cars = await carService.fetchCars();  // Call the service to fetch data
            emit(CarState.loaded(cars));  // Emit loaded state with cars data
          } catch (e) {
            emit(CarState.error(e.toString()));  // Emit error state on failure
          }
        },
         getDistinctMake: (_) async {
          emit(const CarState.loading());
          try {
            final make = await carService.fetchMake();  // Call the service to fetch data
            emit(CarState.makeLoader(make));  // Emit loaded state with cars data
          } catch (e) {
            emit(CarState.error(e.toString()));  // Emit error state on failure
          }
        },
      );
    });
  }
}
