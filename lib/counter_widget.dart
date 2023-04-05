import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
  });

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  void counter() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _counter.toString(),
      style: const TextStyle(fontSize: 100),
    );
  }
}
