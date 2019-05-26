import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<MyAnimatedContainer>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}