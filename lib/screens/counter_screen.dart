import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //default export, is not necessary write export
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  // Class' constructor, It is because it has the class name
  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize = TextStyle(fontSize: 18);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen ',
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
            setState(() => counter++);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
