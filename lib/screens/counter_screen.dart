import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  //default export, is not necessary write export
  const CounterScreen(
      {super.key}); // Class' constructor, It is because it has the class name

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize = TextStyle(fontSize: 18);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Text 1',
              style: fontSize,
            ),
            Text(
              counter.toString(),
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
          onPressed: () {
            counter++;
            // ignore: avoid_print
            print(counter);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
