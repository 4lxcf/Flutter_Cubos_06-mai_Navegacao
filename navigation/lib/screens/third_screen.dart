import 'package:flutter/material.dart';
import 'package:navigation/routes.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.SECOND);
              },
              child: Text('<- Go back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(Routes.FOURTH);
              },
              child: Text('Go to Fourth Screen ->'),
            ),
          ],
        ),
      ),
    );
  }
}
