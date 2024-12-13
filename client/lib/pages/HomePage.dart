import 'package:client/components/ExploreCar.dart';
import 'package:client/components/PopularCar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../components/CustomAppBar.dart';
import '../components/customEndDrawer.dart';
import '../components/ExploreCar.dart';
import '../components/PopularCar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const cars = [
      {
        "image": "assets/images/image.png", // Use appropriate asset images
        "name": "Toyota Corolla",
        "price": "\$20,000",
        "detail": "Reliable and fuel-efficient.",
        'day': '/day'
      },
      {
        "image": "assets/images/image.png", // Use appropriate asset images
        "name": "Kia Sportage",
        "price": "\$25,000",
        "detail": "Compact SUV with modern features.",
        'day': '/day'
      },
      {
        "image": "assets/images/image.png", // Use appropriate asset images
        "name": "Mazda CX-5",
        "price": "\$27,000",
        "detail": "A sporty and stylish crossover.",
        'day': '/day'
      },
    ];
    return Scaffold(
      appBar: CustomAppBar(),
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
              height: screenHeight *0.39,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
              ),
              child: Column(
                children: [
                  Text(
                    "Your adventure begins here - rent today!"
                  ),
                  Text(
                    "You can save up to \$5000 on your car rental."
                  ),
                  Container(
                    child: Transform.translate(
                      offset: Offset(-screenWidth * 0.3, screenHeight * 0.22),
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text(
                          "Book Now",
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Color(0xFF282931)),
                          elevation: WidgetStateProperty.all(0),
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          foregroundColor: WidgetStateProperty.all(Colors.white)
                        ),
                      ),
                    )
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 145),
                      child: Image.asset(
                        'assets/images/image.png'
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ExploreCar(),
            ),
            Container(
              child: PopularCar(cars: cars),
            )
          ],
        ),
      ),
    );
  }
}
