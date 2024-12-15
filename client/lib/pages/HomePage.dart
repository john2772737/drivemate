import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:client/components/ExploreCar.dart';
import 'package:client/components/Car_Card.dart';
import '../components/CustomAppBar.dart';
import '../components/customEndDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const cars = [
      {
        "image": "assets/images/civic.png",
        "name": "Honda Civic",
        "price": "\₱7,000",
        "detail": "Comfort and Interior Quality",
        'day': '/day'
      },
      {
        "image": "assets/images/vios.png",
        "name": "Toyota Vios",
        "price": "\₱5,000",
        "detail": "Strong Performance",
        'day': '/day'
      },
      {
        "image": "assets/images/sorento.png",
        "name": "Sorento",
        "price": "\₱3,000",
        "detail": "Off-road Capability",
        'day': '/day'
      },
    ];

    return Scaffold(
      appBar: CustomAppBar(showBackButton: false, showSearch: true),
      drawer: CustomEndDrawer(
        isLoggedIn: true,
        menuItems: [
          {'icon': Icons.home, 'title': 'Home'},
          {'icon': Icons.settings, 'title': 'Settings'},
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.30,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
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
            // Container wrapping ExploreCar and PopularCar with border and color
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              // Navigate to AllCarsPage with brand name (e.g., "TOYOTA")
                              context.go('/allcars', extra: 'TOYOTA'); // Replace "TOYOTA" with the actual brand name
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
                  ExploreCar(),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20.0, bottom: 10),
                    child: Text(
                      "Popular Cars",
                      style: TextStyle(
                        fontFamily: "nasalization",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Car_Card(cars: cars),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
