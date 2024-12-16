import 'dart:convert';
import 'package:http/http.dart' as http;
import './car_model.dart';

class CarService {
  final String baseUrl = 'http://192.168.100.141:3000/cars/getAllCars';  // Your Node.js backend URL

  Future<List<Car>> fetchCars() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

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
   Future<List<dynamic>> fetchMake() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        // Parse JSON and return list of Car
        List<dynamic> data = json.decode(response.body);
        return data;
      } else {
        // Return an empty list or throw an exception, depending on the behavior you want
        throw Exception('Failed to load carmakes');
      }
    } catch (e) {
      throw Exception('Failed to load carmakes: $e');
    }
  }
}
