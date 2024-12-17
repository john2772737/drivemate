import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import Fluttertoast
import '../repository/auth.dart';
import 'package:go_router/go_router.dart';

class CustomEndDrawer extends StatelessWidget {
  final bool isLoggedIn;
  final List<Map<String, dynamic>> menuItems;
  final String title;

  const CustomEndDrawer({
    Key? key,
    required this.isLoggedIn,
    required this.menuItems,
    this.title = "ViajeMoto",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              child: Center(
                child: Row(
                  children: [
                    // Image Placeholder
                    SizedBox(
                      height: 50,
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Dynamic Menu Items
          ...menuItems.map((item) {
            return ListTile(
              leading: Icon(item['icon']),
              title: Text(item['title']),
            );
          }).toList(),

          // Logout Option (only if logged in)
          if (isLoggedIn)
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                final authService = AuthService(); // Initialize AuthService
                await authService.signOut(); // Sign out the user

                // Show a toast notification
                Fluttertoast.showToast(
                  msg: "Logged out successfully!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );

                // Navigate to Login Page
                if (context.mounted) {
                  GoRouter.of(context).go('/login');
                }
              },
            ),
        ],
      ),
    );
  }
}
