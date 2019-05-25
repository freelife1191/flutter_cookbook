import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAnimatedOpacityState();

}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.play_arrow), onPressed: null),
    );
  }
}