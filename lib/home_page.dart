import 'package:flutter/material.dart';
import 'package:flutter12/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {   // function
          Navigator.of(context)       // navigation
              .push(MaterialPageRoute(builder: (BuildContext context) {     // through material page route
            return LearnFlutterPage();   // Build context is a function so it must return something
          }));
        },
        child: const Text("Whatever"),
      ),
    );
  }
}
