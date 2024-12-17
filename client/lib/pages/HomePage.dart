import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:client/components/ExploreCar.dart';
import 'package:client/components/Car_Card.dart';
import '../components/CustomAppBar.dart';
import '../components/customEndDrawer.dart';
import '../blocs/cars/cars_bloc.dart';  // Import the car BLoC
import '../blocs/cars/car_repo.dart';
import '../blocs/cars/cars_event.dart';
import '../blocs/cars/cars_state.dart';
import '../blocs/cars/car_model.dart'; // Assuming Car model is here

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: CustomAppBar(showBackButton: false, showSearch: true),
      drawer: CustomEndDrawer(
        isLoggedIn: true,
        menuItems: [
          {'icon': Icons.home, 'title': 'Home'},
          {'icon': Icons.settings, 'title': 'Settings'},
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              // Banner Section
              Container(
                height: screenHeight * 0.30,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7), // Optional: change this color if you'd like
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, right: 0.0),
                        child: Image.asset(
                          'assets/images/image.png',
                          width: screenWidth * 0.5,
                          height: screenHeight * 0.35,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your adventure begins here",
                            style: TextStyle(
                              fontFamily: "nasalization",
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "- rent today!",
                            style: TextStyle(
                              fontFamily: "nasalization",
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Opacity(
                              opacity: 0.7,
                              child: Text(
                                "You can save up to \₱5000 ",
                                style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              "on your car rental.",
                              style: TextStyle(
                                fontFamily: "montserrat",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Book Now"),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFF282931)),
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 8)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                foregroundColor: MaterialStateProperty.all(Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Cars List Section
              BlocProvider(
                create: (_) => CarBloc(carService: CarService())..add(FetchCarsEvent()),  // Create and trigger event
                child: BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    if (state is CarLoadingState) {
                      return Center(child: CircularProgressIndicator());
                    } else if (state is CarErrorState) {
                      return Center(child: Text('Error: ${state.errorMessage}'));
                    } else if (state is CarLoadedState) {
                      List<Car> carsToDisplay = state.cars.take(5).toList(); // Limit the number of cars to 5

                      // Extract the car brands (assuming `carBrands` is a List<dynamic>)
                      List<String> carBrands = state.cars.map((car) => car.make).toList();

                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20.0, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Explore by Car Brand",
                                  style: TextStyle(
                                    fontFamily: "nasalization",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: TextButton(
                                    onPressed: () {
                                       GoRouter.of(context).push('/allcars');
                                    },
                                    child: Text(
                                      "View All",
                                      style: TextStyle(
                                        fontFamily: "montserrat",
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Pass carBrands as a parameter to ExploreCar
                          ExploreCar(carBrands: carBrands),  // Added ExploreCar widget here
                          
                          // Popular Cars Container
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 0.0, bottom: 10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(
                                      "Popular Cars",
                                      style: TextStyle(
                                        fontFamily: "nasalization",
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  // Loop through the cars list and display each CarCard
                                  Column(
                                    children: carsToDisplay.map((car) {
                                      return CarCard(car: car);  // Wrap each car in a list so CarCard can handle it
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return Container();  // Default case
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
