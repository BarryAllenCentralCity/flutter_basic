import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheck = false; // nullable variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading:
            false, // upar se automatically jo arrow aata hai use hatana
        leading: IconButton(
          // to add a leading ourselves
          onPressed: () {
            Navigator.of(context).pop(); // like finish
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("IconButton");
              },
              icon: Icon(Icons.abc))
        ], // adding a list of Icon Buttons to the appBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('JL.png'),
            const SizedBox(
              height: 10,
            ),
            Divider(
              // puts a thin line
              color: Colors.black,
            ),
            Container(
              // playing with container
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              color: Colors.blueGrey,
              width: double.infinity,
              child: Text(
                "Test Widgets",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.5,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.deepOrange : Colors.lime,
              ),
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior
                  .opaque, // to get it working everywhere in the child
              onTap: () {
                debugPrint("This is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon((Icons.local_fire_department)),
                  Icon(
                    (Icons.local_fire_department),
                    color: Colors.blue,
                  ),
                  Text("Row Widget"),
                  Icon((Icons.local_fire_department), color: Colors.blue),
                  Icon((Icons.local_fire_department)),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheck,
                onChanged: (bool? newCheck) {
                  // bool ? means it is nullable
                  setState(() {
                    isCheck = newCheck;
                  });
                }),

              Image.network(
                  'https://fabrikbrands.com/wp-content/uploads/Batman-Logo-Evolution-10-1536x960.png'),
              Divider(),
              Image.asset('superman.png'),
              Divider(),
              Image.asset('Flash.jpeg'),
              Divider(),
              Image.asset('Cyborg.png'),
              Divider(),
              Image.asset('GL.png'),
              Divider(),
              Image.asset('Wonder-woman-first-logo.png'),
          ],
        ),
      ),
    );
  }
}
