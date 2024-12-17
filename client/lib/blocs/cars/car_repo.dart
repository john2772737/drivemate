import 'dart:convert';
import 'package:http/http.dart' as http;
import './car_model.dart';

class CarService {
  final String baseUrl = 'http://192.168.1.57:3000/cars/';  // Your Node.js backend URL

  Future<List<Car>> fetchCars() async {
    try {
      final response = await http.get(Uri.parse(baseUrl +"getAllCars"));

      if (response.statusCode == 200) {
        // Parse JSON and return list of Car
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => Car.fromJson(json)).toList();
      } else {
        // Return an empty list or throw an exception, depending on the behavior you want
        throw Exception('Failed to load cars');
      }
    } catch (e) {
      throw Exception('Failed to load cars: $e');
    }
  }
   Future<List<String>> fetchMake() async {
  try {
    final response = await http.get(Uri.parse(baseUrl+"getAllCars"));

    if (response.statusCode == 200) {
      // Parse JSON and extract the makes from the car data
      List<dynamic> data = json.decode(response.body);
      List<String> makes = data.map((car) => car['make'] as String).toList();
      return makes;
    } else {
      // Return an empty list or throw an exception, depending on the behavior you want
      throw Exception('Failed to load car makes');
    }
  } catch (e) {
    throw Exception('Failed to load car makes: $e');
  }

  
}Future<List<Car>> fetchCarsbyBrand(String brand) async {
  try {
    // Make sure the brand parameter is inserted into the URL
    final response = await http.get(Uri.parse('$baseUrl/getcarsbybrand/$brand'));

    if (response.statusCode == 200) {
      // Parse JSON and return a list of cars
      List<dynamic> data = json.decode(response.body);

      return data.map((json) => Car.fromJson(json)).toList();
    } else {
      // If the request fails, throw an exception
      throw Exception('Failed to load cars for brand $brand');
    }
  } catch (e) {
    throw Exception('Failed to load cars: $e');
  }
}


  
}
