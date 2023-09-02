import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //default export, is not necessary write export
  const HomeScreen(
      {super.key}); // Class' constructor, It is because it has the class name

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize = TextStyle(fontSize: 18);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter App',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Text 1',
              style: fontSize,
            ),
            Text(
              'Text 2',
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        // ignore: avoid_print
        onPressed: () => print('action btn'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
