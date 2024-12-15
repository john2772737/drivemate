import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton; // Flag to determine whether to show back button or menu button
  final bool showSearch; // Flag to determine whether to show search bar

  const CustomAppBar({
    Key? key,
    this.showBackButton = false,
    this.showSearch = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          if (showBackButton) {
            return IconButton(
              icon: const Icon(Icons.arrow_back), // Back button
              onPressed: () {
                // Check if GoRouter can pop the current page
                if (GoRouter.of(context).canPop()) {
                  GoRouter.of(context).pop(); // Safely pop the current page
                } else {
                  // If no pages to pop, navigate to the home page or another route
                  GoRouter.of(context).go('/home'); // Adjust this route as needed
                }
              },
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.menu), // Menu button
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Opens the left-side drawer
              },
            );
          }
        },
      ),
      title: showSearch
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
              width: MediaQuery.of(context).size.width * 0.6, // Responsive width
              height: MediaQuery.of(context).size.height * 0.05, // Responsive height
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0), // Lighter grey background
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: TextField(
                style: const TextStyle(fontFamily: "nasalization", fontSize: 16),
                decoration: InputDecoration(
                  hintText: 'Search for a car',
                  hintStyle: const TextStyle(fontFamily: "nasalization", fontSize: 16),
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
            ),
            )
          : const Text(
              "Cars",
              style: TextStyle(fontFamily: "nasalization"),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
