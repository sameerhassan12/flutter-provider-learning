import 'package:counter_example/provider/slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    print("buiddd");
    return Scaffold(
      appBar: AppBar(title: const Text("SliderExampleWithProvider")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Consumer<SliderProvider>(builder: ((context, value, child) {
          return Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                value.SetSlider(val);
              });
        })),
        Consumer<SliderProvider>(builder: ((context, value, child) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value)),
                  child: const Text("Container 1"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Colors.red.withOpacity(value.value)),
                  child: const Text("Container 2"),
                ),
              )
            ],
          );
        }))
      ]),
    );
  }
}
