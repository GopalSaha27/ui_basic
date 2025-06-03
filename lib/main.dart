import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic App",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002B5B),
        title: const Text(
          "Basic UI Practice",
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontFamily: 'Time Ne Roman',
            fontSize: 20,
          ),
        ),
        titleSpacing: 20,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.9,
        elevation: 4,
        iconTheme: const IconThemeData(color: Colors.orange),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mail,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: const Icon(
          Icons.add,
          color: Colors.orange,
        ),
        backgroundColor: Color(0xFF002B5B),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Color(0xFF002B5B),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.orange,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.orange,
            ),
            label: "Person",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: const Text(
                  "Gopal Saha",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                accountEmail: const Text(
                  "gopalsaha@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.orange,
              ),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Color(0xFF002B5B),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.message,
                color: Colors.orange,
              ),
              title: const Text(
                "Contact",
                style: TextStyle(
                  color: Color(0xFF002B5B),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.orange,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: Color(0xFF002B5B),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.orange,
              ),
              title: const Text(
                "Email",
                style: TextStyle(
                  color: Color(0xFF002B5B),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.orange,
              ),
              title: const Text(
                "Phone",
                style: TextStyle(
                  color: Color(0xFF002B5B),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFE5E7E9),
      ),
      body: const Center(
        child: Text(
          "Basic App",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Time New Roman',
            color: Color(0xFF002B5B),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xFFE5E7E9),
    );
  }
}
