import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //default export, is not necessary write export
  const HomeScreen(
      {super.key}); // Class' constructor, It is because it has the class name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center, It is not necessary if we are using the Center Widget before in line 15
            children: const <Widget>[
              Text('Clicks Counter'),
              Text('0'),
            ],
          ),
        ));
  }
}
