import 'package:flutter/material.dart';

/**
 * 텝을 구성
 */
class MyTabController extends StatefulWidget {
  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('OrientationBuilder'),
          bottom: TabBar(tabs: [ //AppBar 바로 아래 TabBar 구
            Tab(icon: Icon(Icons.access_alarm), text: 'Tab1',), //아이콘과 Tab을 동시에 넣으려면 Tab 안에
            Text('Tab2'),
            Text('Tab3'),
          ]),
        ),
        body: TabBarView( // Tab 안에 내용
          children: [
            Icon(Icons.access_alarm), //Icon은 기본적으로 Center 속성을 가지고 있
            Center(child: Text('Tab2')),
            Center(child: Text('Tab3')),
          ],
        )
      ), length: 3, //Tab이 3개
    );
  }
}
