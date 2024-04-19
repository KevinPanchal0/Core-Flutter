import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int counter = 0;
  bool isCounting = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void startCounter() {
    isCounting = true;
    incrementCounterDelayed();
  }

  void incrementCounterDelayed() {
    if (!isCounting) {
      return;
    }

    Future.delayed(const Duration(seconds: 1), () {
      incrementCounter();
      incrementCounterDelayed();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: startCounter,
            tooltip: 'Start',
            child: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}