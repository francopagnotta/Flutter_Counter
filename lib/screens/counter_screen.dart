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
              'Number of clicks',
              style: fontSize,
            ),
            Text(
              counter.toString(),
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Icon(
                Icons.remove,
              ),
              // ignore: avoid_print
              onPressed: () {
                counter--;
                setState(() => {}); // anonymous function that set the state.
              }),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(
                Icons.restart_alt,
              ),
              // ignore: avoid_print
              onPressed: () {
                counter = 0;
                setState(() => {});
              }),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(
                Icons.add,
              ),
              // ignore: avoid_print
              onPressed: () {
                counter++;
                setState(() => {});
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
