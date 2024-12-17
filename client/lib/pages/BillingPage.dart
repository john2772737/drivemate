import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../repository/auth.dart';
import '../blocs/cars/car_model.dart';
import '../repository/booking_service.dart';
import 'dart:io'; // Add this import to use the File class
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

class BillingPage extends StatefulWidget {
  final AuthService authService = AuthService(); // Initialize AuthService
  final String? email; // Email field (optional)
  final Car car; // Car object passed to this page
  final String? uid; // Current user UID field

  BillingPage({Key? key, required this.car}) 
      : email = AuthService().currentUser?.email, // Get the current user's email
        uid = AuthService().currentUser?.uid, // Get the current user's UID
        super(key: key);

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  final Map<String, dynamic> _formData = {
    "name": "",
    "uid": "", // This will be set to the user's UID
    "email": "", // Email field
    "phone": "",
    "rentalDate": null, // Changed from returnDate to rentalDate
    "idImage": null, // Added for storing ID image URL
  };

  final ImagePicker _picker = ImagePicker();
  XFile? _pickedImage; // To hold the selected image file

  final BookingService _bookingService = BookingService(); // Initialize the BookingService

  @override
  void initState() {
    super.initState();
    // Pre-populate the email and uid fields with the Firebase user's info
    _formData['email'] = widget.email;
    _formData['uid'] = widget.uid; // Set UID from authService
  }

  // Helper method for showing date picker
  Future<void> _selectDate(BuildContext context, String dateField) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (selectedDate != null) {
      setState(() {
        _formData[dateField] = selectedDate;
      });
    }
  }

  // Method to pick an image for ID upload
  Future<void> _pickImage() async {
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery); // or ImageSource.camera

    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
        _formData['idImage'] = File(pickedImage.path).path; // Store the file path temporarily
      });
    }
  }

  // Method to upload image to ImageBB
  Future<String> _uploadImageToImageBB(File imageFile) async {
    final String apiKey = '4713a2e6319b66146b39ddedddde1bac'; // Replace with your ImageBB API key

    final uri = Uri.parse('https://api.imgbb.com/1/upload');
    final request = http.MultipartRequest('POST', uri)
      ..fields['key'] = apiKey
      ..files.add(await http.MultipartFile.fromPath('image', imageFile.path));

    final response = await request.send();
    final responseBody = await http.Response.fromStream(response);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(responseBody.body);
      return responseData['data']['url']; // Return the image URL
    } else {
      throw Exception('Failed to upload image to ImageBB');
    }
  }

  // Method to handle the checkout action (creating booking)
  Future<void> _handleCheckout() async {
    try {
      // Validation
      if (_formData["name"].isEmpty || _formData["phone"].isEmpty || _formData["rentalDate"] == null || _formData["idImage"] == null) {
        Fluttertoast.showToast(
          msg: "Please fill all fields and upload your ID image.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
        return;
      }

      // Ensure rentalDate is non-null (defaults to current date if null)
      _formData["rentalDate"] = _formData["rentalDate"] ?? DateTime.now();
      
      // Ensure idImage is non-null (defaults to an empty string if null)
      _formData["idImage"] = _formData["idImage"] ?? "";

      // If an image has been selected, upload it to ImageBB
      if (_pickedImage != null) {
        String imageUrl = await _uploadImageToImageBB(File(_pickedImage!.path));
        _formData['idImage'] = imageUrl; // Update _formData with the image URL
      }

      // Log the formData for debugging purposes
      print(_formData);

      // Create booking with updated form data
      await _bookingService.createBooking(_formData);

      // Show success message
      Fluttertoast.showToast(
        msg: "Wait for approval, an email has been sent.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );

      // Navigate to the home page (or any other page)
      GoRouter.of(context).go("/home");// Goes back to the first screen (home screen)

    } catch (e) {
      // Handle any errors during the booking process
      Fluttertoast.showToast(
        msg: "Error: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Billing Page",
          style: TextStyle(
            fontFamily: 'Nasalization',
          ),
        ),
        backgroundColor: const Color(0xFF282931),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Car Information Display
              _buildCarDetails(),

              const SizedBox(height: 20),

              // Billing Form
              _buildLabelAndInput("Name", "name"),
              
              // Email field (disabled)
              _buildLabelAndInput("Email", "email", enabled: false),
              
              _buildLabelAndInput("Cellphone Number", "phone"),

              // Row for Rental Date only
              SizedBox(
                width: double.infinity,
                child: _buildDatePicker("Select Date of Rental", "rentalDate"),
              ),

              const SizedBox(height: 20),

              // ID Upload Section
              _buildIdUploadSection(),

              const SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: _handleCheckout, // Call the checkout handler
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(340, 40),
                    backgroundColor: const Color(0xFF282931),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Checkout",
                    style: TextStyle(
                      fontFamily: 'Nasalization',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Display Car Details
  Widget _buildCarDetails() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Car Details",
            style: TextStyle(
              fontFamily: 'Nasalization',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Make: ${widget.car.make}",
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            "Model: ${widget.car.model}",
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            "Price: \$${widget.car.price.toStringAsFixed(2)} per day",
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  // Build simple labeled text input
  Widget _buildLabelAndInput(String label, String fieldKey, {bool enabled = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Nasalization',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: TextField(
              onChanged: enabled ? (value) {
                setState(() {
                  _formData[fieldKey] = value;
                });
              } : null,
              controller: enabled ? null : TextEditingController(text: _formData[fieldKey]),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[350],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              ),
              enabled: enabled,
            ),
          ),
        ],
      ),
    );
  }

  // Build date picker row
  Widget _buildDatePicker(String label, String dateField) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Nasalization',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: TextField(
              controller: TextEditingController(text: _formData[dateField]?.toString().split(' ')[0]),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[350],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              ),
              readOnly: true,
              onTap: () => _selectDate(context, dateField),
            ),
          ),
        ],
      ),
    );
  }

  // Build ID upload section
  Widget _buildIdUploadSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Upload Your ID Image",
            style: TextStyle(
              fontFamily: 'Nasalization',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            onPressed: _pickImage,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
              backgroundColor: const Color(0xFF282931),
              foregroundColor: Colors.white,
            ),
            child: const Text("Select Image"),
          ),
          if (_pickedImage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Selected image: ${_pickedImage!.name}'),
            ),
        ],
      ),
    );
  }
}
