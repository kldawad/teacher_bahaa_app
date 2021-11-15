// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final Map _map = {
    "0": [1, 2, 5, 8],
    "1": [0, 1, 2, 3, 4, 5, 6, 7, 8],
    "2": [0, 1, 2, 3, 4, 5, 6, 7, 8],
    "3": [0, 1, 2, 3, 4, 5, 6, 7, 8],
    "4": [0, 1, 2],
    "5": [0, 1],
  };

  final List<Widget> _test = [];

  int counter = 0;

  Widget getPage(int index) {
    if (!_map["1"].any((element) => index == element)) {
      return Container(
        color: Colors.pink,
        child: Center(
          child: Text(
            "$index",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }

  getPage2(int index) {
    for (int i = 0; i < 5; i++) {
      if (!_map["$i"].any((element) => index == element)) {
        return Container(
          color: Colors.pink,
          child: Center(
            child: Text(
              "$index",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }
  }

  getPage3(int index) {
    _map.forEach((key, value) {
      if (!_map[key].any((element) => index == element)) {
        Container(
          color: Colors.pink,
          child: Center(
            child: Text(
              "$index",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      } else {
        SizedBox();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView.builder(
            itemCount: 3,
            itemBuilder: (context, count) {
              return Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(""),
                        Text("1"),
                        Text(""),
                        Text("2"),
                        Text(""),
                        Text("3"),
                        Text(""),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8,
                            crossAxisCount: 3,
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,
                          ),
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return getPage2(index);
                          }),
                    ),
                  ),
                ],
              );
            }));
  }
}
