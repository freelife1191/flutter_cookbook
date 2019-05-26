import 'package:flutter/material.dart';
import 'package:fluttercookbook/src/MyAnimatedContainer.dart';
import 'package:fluttercookbook/src/MyAnimatedOpacity.dart';
import 'package:fluttercookbook/src/MyDrawer.dart';
import 'package:fluttercookbook/src/MyOrientation.dart';
import 'package:fluttercookbook/src/MySnackBar.dart';
import 'package:fluttercookbook/src/MyTabController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, // 전체적인 테마 색상
//        brightness: Brightness.dark, //전체적인 테마 변경
//        primaryColor: Colors.blue, //기본 색상
//        accentColor: Colors.yellow //버튼 색
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: Home()
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimatedOpacity'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('Drawer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('SnackBar'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('화면 방향에 따른 처리'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
        ListTile(
          title: Text('TabController'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabController()));
          },
        ),
      ],
    );
  }
}

