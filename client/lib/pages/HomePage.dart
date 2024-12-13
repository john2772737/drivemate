import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../components/CustomAppBar.dart';
import '../components/customEndDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
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
              height: screenHeight *0.35,
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
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Text(
                      "Book Now"
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
