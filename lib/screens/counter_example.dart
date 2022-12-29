import 'dart:async';

import 'package:counter_example/provider/counter..dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int counter = 0;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      var count = Provider.of<ConuterProvider>(context, listen: false);
      count.addCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ConuterProvider>(builder: ((context, value, child) {
            return Center(child: Text(value.counter.toString()));
          }))
        ],
      ),
    );
  }
}
