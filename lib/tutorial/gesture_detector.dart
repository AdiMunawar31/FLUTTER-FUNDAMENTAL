import 'package:flutter/material.dart';

class GestureDetect extends StatefulWidget {
  const GestureDetect({Key? key}) : super(key: key);

  @override
  State<GestureDetect> createState() => _GestureDetectState();
}

class _GestureDetectState extends State<GestureDetect> {
  int numTap = 0;
  int numDoubleTaps = 0;
  int numLongPress = 0;

  final double boxSize = 150.0;
  double posX = 0.0;
  double posY = 0.0;

  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      center(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detectors'),
      ),
      body: Stack(children: [
        Positioned(
          top: posY,
          left: posX,
          child: GestureDetector(
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
            onPanUpdate: (DragUpdateDetails details) {
              setState(() {
                double deltaX = details.delta.dx;
                double deltaY = details.delta.dy;
                posX += deltaX;
                posY += deltaY;
              });
            },
            onVerticalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                double delta = details.delta.dy;
                posY += delta;
              });
            },
            child: Container(
              width: boxSize,
              height: boxSize,
              decoration: BoxDecoration(color: Colors.red),
            ),
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

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30;

    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
