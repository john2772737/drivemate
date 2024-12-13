import 'package:flutter/material.dart';

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
                    //image
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
                )
              ),
            ),
          ),
          ...menuItems.map((item) {
            return ListTile(
              leading: Icon(item['icon']),
              title: Text(item['title']),
            );
          }).toList(),

          if (isLoggedIn)
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
