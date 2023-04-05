import 'package:flutter/material.dart';

import 'counter_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final counterKey = GlobalKey<CounterWidgetState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterKey.currentState!.counter();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Button Clicked',
                style: TextStyle(fontSize: 40),
              ),
              CounterWidget(
                key: counterKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
