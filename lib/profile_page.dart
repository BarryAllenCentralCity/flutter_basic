import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${index + 1}'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            debugPrint("Item Number ${index}");
          },
        );
      },
    );
  }
}
