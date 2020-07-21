import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _onPressedFab(),
      ),
    );
  }

  void _onPressedFab() {
    setState(() {
      _width = (Random().nextInt(300)).toDouble();
      _height = (Random().nextInt(300)).toDouble();
      _color = Color.fromRGBO(
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
          1);
      _borderRadiusGeometry = BorderRadius.circular(Random().nextInt(100).toDouble());
    });
  }
}
