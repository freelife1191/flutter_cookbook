import 'package:flutter/material.dart';

/**
 * 네비게이션 Drawer
 */
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, //공백을 메꾸기 위해
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration( // DrawerHeader은 color 속성이 없으므로 decoration 으로 색깔을 넣어줌
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // 할 일
                Navigator.pop(context); //네비게이션 닫기
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // 할 일
                Navigator.pop(context); //네비게이션 닫기
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                // 할 일
                Navigator.pop(context); //네비게이션 닫기
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Text('Drawer 예제'),
      ));
  }
}
