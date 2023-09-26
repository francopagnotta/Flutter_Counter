import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //default export, is not necessary write export
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActionButtons(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: restart,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomFloatingActionButtons extends StatelessWidget {
  final Function increaseFn, decreaseFn, resetFn;

  const CustomFloatingActionButtons({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
