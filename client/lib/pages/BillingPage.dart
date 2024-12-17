import 'package:flutter/material.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({Key? key}) : super(key: key);

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  DateTime? pickupDate;
  DateTime? returnDate;

  // Helper method for showing date picker
  Future<void> _selectDate(BuildContext context, bool isPickup) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (selectedDate != null) {
      setState(() {
        if (isPickup) {
          pickupDate = selectedDate;
        } else {
          returnDate = selectedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Label at the Top
              const Text(
                "Fill up your Billing",
                style: TextStyle(
                  fontFamily: 'Nasalization',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20), // Space after title

              // Name and other inputs
              _buildLabelAndInput("Name"),
              _buildLabelAndInput("Email"),
              _buildLabelAndInput("Cellphone Number"),

              // Row for Pickup Date and Return Date
              Row(
              children: [
                // Use SizedBox to set custom width
                SizedBox(
                  width: 200,  // Customize width for Pickup Date picker
                  child: _buildDatePicker("Pickup Date", pickupDate, true),
                ),
                const SizedBox(width: 0),
                SizedBox(
                  width: 170,  // Customize width for Return Date picker
                  child: _buildDatePicker("Return Date", returnDate, false),
                ),
              ],
            ),


              // Payment Methods
              _buildPaymentMethodInput(),

              // Add another option button
              Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 30), // Set the width and height (width: 280, height: 50)
                  backgroundColor: Color(0xFF282931), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12), // Set inner padding for text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9), // Set the border radius
                  ),
                ),
                child: const Text(
                  "Choose photo",
                  style: TextStyle(
                    fontFamily: 'Nasalization', // Replace with your font name
                    fontSize: 16, // Set the font weight
                  ),
                ),
              ),
            ),


              const SizedBox(height: 30),

              // Checkout Button
              Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(340, 30), // Set the width and height (width: 280, height: 50)
                  backgroundColor: Color(0xFF282931), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12), // Set inner padding for text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Set the border radius
                  ),
                ),
                child: const Text(
                  "Checkout",
                  style: TextStyle(
                    fontFamily: 'Nasalization', // Replace with your font name
                    fontSize: 16, // Set the font weight
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

  // Build simple labeled text input
  Widget _buildLabelAndInput(String label) {
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
            height: 40, // Set the desired height of the input
            width: double.infinity, // Set width to take full available space
            child: TextField(
              style: const TextStyle(
                fontFamily: 'Nasalization',
                fontSize: 16,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[350],
                hintStyle: const TextStyle(
                  fontFamily: 'Nasalization',
                  color: Colors.black45,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12, 
                  vertical: 18, // Adjust the padding inside the input field
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build date picker row
  Widget _buildDatePicker(String label, DateTime? date, bool isPickup) {
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
          InkWell(
            onTap: () => _selectDate(context, isPickup),
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                date == null ? "MM/DD/YYYY" : date.toString().split(' ')[0],
                style: const TextStyle(
                  fontFamily: 'Nasalization',
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // Build payment method inputs
  Widget _buildPaymentMethodInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,
          vertical: 10),
          child: const Text(
            "Upload your ID",
            style: TextStyle(fontSize: 18, fontFamily: "Nasalization", fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  // Build each payment option input
  
}
