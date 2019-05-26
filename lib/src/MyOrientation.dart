import 'package:flutter/material.dart';

/**
 * 화면 전환시 효과 적용
 */
class MyOrientation extends StatefulWidget {
  @override
  _MyOrientationState createState() => _MyOrientationState();
}

class _MyOrientationState extends State<MyOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrientationBuilder'),
      ),
      body: Container(),
    );
  }
}
