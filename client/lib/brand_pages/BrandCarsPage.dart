import 'package:flutter/material.dart';
import 'package:client/brand_pages/brand_cars_data.dart';
import 'package:client/components/Car_Card.dart';


class BrandCarsPage extends StatelessWidget {
  final String brandName;

  const BrandCarsPage({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    // Fetch the cars for the selected brand
    final List<Map<String, String>> cars = brandCars[brandName] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text("$brandName Cars"),
      ),
      // Use Car_Card component here
    );
  }
}
