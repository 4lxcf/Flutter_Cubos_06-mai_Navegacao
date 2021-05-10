import 'package:flutter/material.dart';
import 'package:navigation/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.SECOND);
              },
              child: Text('Go to Second Screen ->'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.THIRD);
              },
              child: Text('Go to Third Screen ->'),
            ),
          ],
        ),
      ),
    );
  }
}
