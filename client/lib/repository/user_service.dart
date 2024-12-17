import 'package:http/http.dart' as http;
import 'dart:convert';

class UserService {
  final String baseUrl = 'http://192.168.1.53:3000/user/';  // Your Node.js backend URL

  Future<void> saveUserToDatabase(Map<String, String> userData) async {
    try {
      // Check if the user already exists by email or uid
      final response = await http.get(
        Uri.parse('$baseUrl/checkUser/${userData['email']}'), // Assuming your backend has a checkUser endpoint
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        if (data['exists']) {
          // If the user already exists, do not save the data
          print("User already exists in the database.");
          return;
        }
      } else {
        throw Exception('Failed to check if user exists');
      }

      // If user doesn't exist, proceed with saving the data
      final saveResponse = await http.post(
        Uri.parse('$baseUrl/createUser'),
        headers: {"Content-Type": "application/json"},
        body: json.encode(userData),
      );

      if (saveResponse.statusCode == 200) {
        print("User saved successfully.");
      } else {
        throw Exception('Failed to save user data');
      }
    } catch (e) {
      print('Error saving user data: $e');
      
    }
  }
}
