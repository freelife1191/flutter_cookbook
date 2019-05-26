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
      body: OrientationBuilder( // OrientationBuilder로 감싸서 세로 가로 여부를 받을 수 있음
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 5, //세로일 때는 3열 가로일 때는 5열로 나옴
              children: List.generate(50, (position) {
                return Center(
                  child: Text('Item $position'),
                );
              })
          );
        },
      )
    );
  }
}