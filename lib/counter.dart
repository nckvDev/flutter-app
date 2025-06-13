import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int count = 0;
  int countLess = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $count'),
        TextButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text('Increment'),
        ),
        MyCounterLess(count: countLess),
        MyCounterLess(count: countLess),
        ElevatedButton(
          child: Text('Increment less'),
          onPressed: () {
            setState(() {
              countLess++;
            });
          }, 
        ),
      ],
    );
  }
}

// Using widget constructors
class MyCounterLess extends StatelessWidget {
  final int count;
  const MyCounterLess({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text('$count');
  }
}

