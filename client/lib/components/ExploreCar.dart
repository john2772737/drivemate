import 'package:client/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ExploreCar extends StatelessWidget {
  final List<String> carBrands;

  const ExploreCar({super.key, required this.carBrands});  // Accept car brands as a parameter

  @override
  Widget build(BuildContext context) {
    // Remove duplicates from the list of car brands using a Set
    List<String> uniqueCarBrands = carBrands.toSet().toList();

    return Container(
      padding: const EdgeInsets.only(top: 0, left: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 40, // Adjusted to fit buttons better
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: uniqueCarBrands.length,  // Use the unique list
              itemBuilder: (context, index) {
                final brandName = uniqueCarBrands[index];  // Get the unique brand name
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      // Text color
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                        GoRouter.of(context).push('/brandCars', extra: brandName);
                    },
                    child: Text(
                      brandName,
                      style: const TextStyle(
                        fontFamily: "nasalization",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
