import 'package:flutter/material.dart';
import 'package:navigation/routes.dart';

class Result {
  String name;
  int age;
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Result item = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Fourth Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil(
                  ModalRoute.withName(Routes.HOME),
                );
              },
              child: Text('<- Go to Home Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(Routes.THIRD);
              },
              child: Text('<- Go back'),
            ),
            item != null
                ? Text('Name: ${item.name} // Age: ${item.age}')
                : Text(''),
          ],
        ),
      ),
    );
  }
}
