import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import for Bloc usage
import 'package:client/blocs/cars/cars_bloc.dart'; // Import your CarBloc
import 'package:client/blocs/cars/cars_event.dart'; // Import the CarEvent
import 'package:client/blocs/cars/cars_state.dart'; // Import the CarState
import 'package:client/components/Car_Card.dart'; // Import the Car Card component
import '../blocs/cars/car_repo.dart';

class BrandCarsPage extends StatelessWidget {
  final String brandName;

  const BrandCarsPage({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    // Wrap the page in BlocProvider and provide the CarBloc
    return BlocProvider(
      create: (context) => CarBloc(carService: CarService())..add(CarEvent.getCarsbyBrand(brandName)), // Dispatch the event on page load
      child: Scaffold(
        appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90.0),
          child: Text(
            "$brandName",
            style: TextStyle(
              fontFamily: 'Nasalization',  // Replace with your font family
              fontSize: 23,  // Optional: Set font size
              fontWeight: FontWeight.bold,  // Optional: Set font weight
            ),
          ),
        ),
      ),

        body: BlocBuilder<CarBloc, CarState>(
          builder: (context, state) {
            if (state is CarLoadingState) {
              // Show a loading indicator while cars are being fetched
              return const Center(child: CircularProgressIndicator());
            } else if (state is CarErrorState) {
              // Show an error message if there's an issue fetching the cars
               return Center(child: Text("Error: ${state.errorMessage}"));
            } else if (state is CarLoadedState) {
              // Show the list of cars once they are loaded
              final cars = state.cars;

              // Using ListView.builder to display each car
              return ListView.builder(
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  final car = cars[index];
                  return CarCard(car: car); // Assuming CarCard takes a 'car' as a parameter
                },
              );
            } else {
              // Handle any other states (for example, if no state matches)
              return const Center(child: Text('No cars found.'));
            }
          },
        ),
      ),
    );
  }
}
