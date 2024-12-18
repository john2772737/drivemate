import 'package:http/http.dart' as http;
import 'dart:convert';

class BookingService {
  final String baseUrl = 'http://192.168.1.53:3000/booking/'; // Your Node.js backend URL for bookings
  final String userUrl = 'http://192.168.1.53:3000/user/'; // Your Node.js backend URL for users

  // Create booking method
  Future<void> createBooking(Map<String, dynamic> bookingData) async {
    print(bookingData);
    try {
      // Convert DateTime fields to strings
      if (bookingData['rentalDate'] != null) {
        bookingData['rentalDate'] = bookingData['rentalDate'].toIso8601String();
      }
      if (bookingData['idImage'] != null) {
        // Ensure image URL is a string if it's an object (not needed but safe to check)
        bookingData['idImage'] = bookingData['idImage'].toString();
      }

      // Check if the user has rented a car
      final response = await http.get(
        Uri.parse('$userUrl/checkIfUserHasRentedCar/${bookingData['uid']}'), // Check if the user has rented a car
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        if (data['hasRentedCar'] == false) {
          // If the user has rented a car, return an error
          print("Error: User already has a rented car.");
          return;
        }
      } else {
        throw Exception('Failed to check rented car status');
      }

      // If the user has not rented a car, proceed with creating the booking
      final createResponse = await http.post(
        Uri.parse('$baseUrl/createBooking'),
        headers: {"Content-Type": "application/json"},
        body: json.encode(bookingData), // Booking data to send to the server
      );

      if (createResponse.statusCode == 200) {
        print("Booking created successfully.");
      } else {
        throw Exception('Failed to create booking');
      }
    } catch (e) {
      print('Error creating booking: $e');
    }
  }
}
