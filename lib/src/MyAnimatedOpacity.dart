import 'package:flutter/material.dart';

/**
 * 투명도만 조절하는 위젯
 */
class MyAnimatedOpacity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAnimatedOpacityState();

}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      // opacity 와 duration 이 필수
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500), // seconds 옵션
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.play_arrow), onPressed: () {
        setState(() { // 반대값으로 변환하는 함수
          _visible = !_visible;
        });
      }),
    );
  }
}