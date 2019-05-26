import 'dart:math';

import 'package:flutter/material.dart';

/**
 * 상하좌우 크기가 랜덤으로 변하는 위젯
 */
class MyAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<MyAnimatedContainer>{
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadius _borderRadius = BorderRadius.circular(8); //모서리를 다듬는 정도

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color, //decoration 설정시 color이 decoration 안에만 존재 해야함
              borderRadius: _borderRadius // 모서리를 둥글게 다듬어줌
            ),
            duration: Duration(seconds: 1), // 1초 동안 모양이 변함
            curve: Curves.fastOutSlowIn, // 변화속도 효과 주기
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1);
            _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}