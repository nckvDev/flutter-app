import 'package:flutter/material.dart';
// import 'favorites_app.dart';
import 'counter.dart';

void main() {
  runApp(Layout());
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  // const Text('Hello, World!'),
                  const PaddedText(),
                  const SizedBox(height: 20.0),
                  // BorderedImage(),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                    },
                    child: const Text('A button'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      spacing: 10.0,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Column(
                        //   children: [
                        //     BorderedImage(),
                        //     Text('Star 1'),
                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     Container(
                        //       padding: EdgeInsets.all(16.0),
                        //       child: BorderedImage(),
                        //     ),
                        //     Text('Star 2'),
                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     BorderedImage(),
                        //     Text('Star 3'),
                        //   ],
                        // ),
                        Expanded(
                          child: BorderedImage()
                        ),
                        Expanded(
                          child: BorderedImage()
                        ),
                        Expanded(
                          child: BorderedImage()
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      MyCounter(),
                    ],
                  )
                ],
              );
            }
          ),
        ),
      )
    );
  }
}

class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text('Hello, World!'),
    );
  }
}

class BorderedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green.shade900,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Image.asset(
        'assets/starbucks-logo.png',
        width: 100,
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }
}
