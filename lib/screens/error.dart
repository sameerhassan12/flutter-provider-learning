import 'package:flutter/material.dart';

class PickScreen extends StatefulWidget {
  const PickScreen({super.key});

  @override
  State<PickScreen> createState() => _PickScreenState();
}

class _PickScreenState extends State<PickScreen> {
  List pickList = ["Pick2", "Pick3", "Pick4", "Marriage"];
  List list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text("Lottery Types"),
      ),
      body: Row(
        children: [
          Container(
            height: 20,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: pickList.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    color: Colors.grey,
                    child: GestureDetector(
                        onTap: () {
                          list.contains(index)
                              ? list.remove(index)
                              : list.add(index);
                          print(list.toString());
                        },
                        child: Text(
                          pickList[index],
                          style: TextStyle(
                              color: list.contains(index)
                                  ? Colors.pink
                                  : Colors.black),
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
