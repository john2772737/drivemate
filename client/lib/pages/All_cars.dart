import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';  // For Bloc usage
import 'package:client/blocs/cars/cars_bloc.dart'; // Import your CarBloc
import 'package:client/blocs/cars/cars_event.dart'; // Import CarEvent
import 'package:client/blocs/cars/cars_state.dart'; // Import CarState
import 'package:client/components/Car_Card.dart';  // Import the Car_Card component
import 'package:client/components/CustomAppBar.dart';  // Import the CustomAppBar
import 'package:client/blocs/cars/car_repo.dart';  // Import CarService

class AllCarsPage extends StatelessWidget {
  const AllCarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the page with BlocProvider to provide CarBloc
    return BlocProvider(
      create: (context) => CarBloc(carService: CarService())..add(CarEvent.fetchCars()), // Trigger fetching cars
      child: Scaffold(
        appBar: CustomAppBar(showBackButton: true, showSearch: true),
        body: BlocBuilder<CarBloc, CarState>(
          builder: (context, state) {
            if (state is CarLoadingState) {
              // Show a loading indicator while fetching cars
              return const Center(child: CircularProgressIndicator());
            } else if (state is CarErrorState) {
              // Show error message if something goes wrong
              return Center(child: Text("Error: ${state.errorMessage}"));
            } else if (state is CarLoadedState) {
              // Show the cars once they are loaded
              final cars = state.cars;

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // "Ready to be rent" text
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "Ready to be rent",
                        style: TextStyle(
                          fontFamily: "nasalization",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Display all the cars
                    Expanded(
                      child: ListView.builder(
                        itemCount: cars.length,
                        itemBuilder: (context, index) {
                          final car = cars[index];
                          return CarCard(car: car); // Pass each car to Car_Card
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              // Handle any other states
              return const Center(child: Text('No cars found.'));
            }
          },
        ),
      ),
    );
  }
}
