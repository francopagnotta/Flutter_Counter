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
    const TextStyle fontSize = TextStyle(fontSize: 30);

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
      floatingActionButton: const CustomFloatingActionButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomFloatingActionButtons extends StatelessWidget {
  const CustomFloatingActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
