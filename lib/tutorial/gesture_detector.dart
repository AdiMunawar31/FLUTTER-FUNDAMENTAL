import 'package:flutter/material.dart';

class GestureDetect extends StatefulWidget {
  const GestureDetect({Key? key}) : super(key: key);

  @override
  State<GestureDetect> createState() => _GestureDetectState();
}

class _GestureDetectState extends State<GestureDetect> {
  final double boxSize = 150.0;
  int numTap = 0;
  int numDoubleTaps = 0;
  int numLongPress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Stack(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              numTap++;
            });
          },
          onDoubleTap: () {
            setState(() {
              numDoubleTaps++;
            });
          },
          onLongPress: () {
            setState(() {
              numLongPress++;
            });
          },
          child: Container(
            width: boxSize,
            height: boxSize,
            decoration: BoxDecoration(color: Colors.red),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Taps: $numTap - Double Taps: $numDoubleTaps - Long Press: $numLongPress',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
