import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inventory App",
          style: TextStyle(
              color: Colors.orange, // Set the title text color
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman' ,
              fontSize: 20// Make the title bold
          ),
        ),
        titleSpacing: 10,
        centerTitle: true, // Center the title
        toolbarHeight: 60,
        toolbarOpacity: 0.9, // Make the toolbar more opaque
        elevation: 4, // Add elevation (shadow)
        backgroundColor: Colors.teal, // Custom background color
        iconTheme: const IconThemeData(color: Colors.orange), // Icon color
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("Comments", context);
              },
              icon: const Icon(Icons.comment, color: Colors.orange)), // Action icon color
          IconButton(
              onPressed: () {
                MySnackBar("Search", context);
              },
              icon: const Icon(Icons.search, color: Colors.orange)),
          IconButton(
              onPressed: () {
                MySnackBar("Settings", context);
              },
              icon: const Icon(Icons.settings, color: Colors.orange)),
          IconButton(
              onPressed: () {
                MySnackBar("Email", context);
              },
              icon: const Icon(Icons.email, color: Colors.orange))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,

        child: const Icon(Icons.add),
        backgroundColor: Colors.orange, // Same background as AppBar
        onPressed: () {
          MySnackBar("FloatingActionButton", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        selectedItemColor: Colors.orange,
        selectedLabelStyle: TextStyle(
            fontFamily: 'Times New Roman'
        ),
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Home", context);
          }
          if (index == 1) {
            MySnackBar("Contact", context);
          }
          if (index == 2) {
            MySnackBar("Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                // decoration: const BoxDecoration(color: Colors.white),
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "Gopal Saha",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "info@gopal.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                    "https://png.pngtree.com/png-clipart/20221224/original/pngtree-the-flutter-colorful-design-png-image_8801693.png"),
                onDetailsPressed: () {
                  MySnackBar("This is my Profile", context);
                },
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  MySnackBar("Home", context);
                }),
            ListTile(
                leading: const Icon(Icons.message),
                title: const Text("Contact"),
                onTap: () {
                  MySnackBar("Contact", context);
                }),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {
                  MySnackBar("Profile", context);
                }),
            ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Email"),
                onTap: () {
                  MySnackBar("Email", context);
                }),
            ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Phone"),
                onTap: () {
                  MySnackBar("Phone", context);
                })
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(
              fontSize: 24,
              fontFamily: 'Times New Roman',
              color: Colors.orange
          ),
        ),
      ),
    );
  }
}
