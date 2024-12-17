import 'package:bloc/bloc.dart';
import 'cars_event.dart';
import 'cars_state.dart';
import 'car_repo.dart'; // Your CarService or repository

class CarBloc extends Bloc<CarEvent, CarState> {
  final CarService carService;

  // Constructor
  CarBloc({required this.carService}) : super(const CarState.initial()) {
    // Handle each event
    on<CarEvent>((event, emit) async {
      await event.map(
        fetchCars: (_) async => _handleFetchCars(emit),
        getDistinctMake: (_) async => _handleGetDistinctMake(emit),
        getCarsbyBrand: (event) async => _handleGetCarsbyBrand(emit, event.brand),
      );
    });
  }

  // Handle FetchCars Event
  Future<void> _handleFetchCars(Emitter<CarState> emit) async {
    emit(const CarState.loading()); // Emit loading state
    try {
      final cars = await carService.fetchCars(); // Fetch the cars
      emit(CarState.loaded(cars)); // Emit loaded state with fetched cars
    } catch (e) {
      emit(
          CarState.error(e.toString())); // Emit error state if there's an error
    }
  }

  // Handle GetDistinctMake Event
  Future<void> _handleGetDistinctMake(Emitter<CarState> emit) async {
    emit(const CarState.loading()); // Emit loading state
    try {
      final makes = await carService.fetchMake(); // Fetch distinct makes
      emit(CarState.makeLoader(makes)); // Emit state with makes
    } catch (e) {
      emit(CarState.error(e.toString())); // Emit error state
    }
  }

// Handle GetCarsbyBrand Event
  Future<void> _handleGetCarsbyBrand(
      Emitter<CarState> emit, String brand) async {
    emit(const CarState.loading()); // Emit loading state
    try {
      final cars = await carService
          .fetchCarsbyBrand(brand); // Pass the brand to fetch cars
      emit(CarState.loaded(cars)); // Emit state with cars by brand
    } catch (e) {
      emit(CarState.error(e.toString())); // Emit error state
    }
  }
}
