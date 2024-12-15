import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExploreCar extends StatelessWidget {
  const ExploreCar({super.key});

  @override
  Widget build(BuildContext context) {
    const carBrands = ["TOYOTA", "KIA", "MAZDA", "HONDA"];

    return Container(
      padding: const EdgeInsets.only(top: 0, left: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: carBrands.length,
              itemBuilder: (context, index) {
                final brandName = carBrands[index];
                return GestureDetector(
                  onTap: () {
                    context.push('/brandCars', extra: brandName); // Navigate with brand name
                  },
                  child: Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blueGrey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        brandName,
                        style: const TextStyle(
                          fontFamily: "nasalization",
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
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
