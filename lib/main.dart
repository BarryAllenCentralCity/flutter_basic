import 'package:flutter/material.dart';
import 'package:flutter12/home_page.dart';
import 'package:flutter12/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   // The debug tag on the top right corner
      theme: ThemeData(
        primarySwatch: Colors.deepOrange, // Primary color of the app (appbar etc)
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentpage = 0;          // for indexing

  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "F12",
          textAlign: TextAlign.center,
        ),
      ),
      body: pages[currentpage],   // in another file
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button');  // for debugging duh
        },
        child: Icon(Icons.accessibility_new), // for putting icons
      ),
      bottomNavigationBar: NavigationBar(    // Navigating bw tabs
        destinations: const [     // [ is for starting a list
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],
        onDestinationSelected: (int index){     // navigating between tabs using bottom navigation bar
          setState(() {
            currentpage = index;   // index of page
          });
        },
        selectedIndex: currentpage,   // to change after tapping
      ),
    );
  }
}
