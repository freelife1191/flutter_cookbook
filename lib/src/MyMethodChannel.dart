import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/**
 * 네이티브코드 연동 - Flutter
 * MethodChannel 을 통해서 네이티브 값 얻기 버튼 클릭시 값을 받아오기
 * Android - FlutterView
 * iOS - FlutterViewController
 */
class MyMethodChannel extends StatefulWidget {
  @override
  _MyMethodChannelState createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  //platform을 사용하면 Android나 Ios 와 통신을 할 수 있게됨
  static const platform = const MethodChannel('example.com/value');
  String _value = 'null';

  //비동기로 데이터를 받기위해 필요
  Future<void> _getNativeValue() async {
    String value;

    try {
      //Android나 iOS의 어떤 Method를 실행하게 함
      value = await platform.invokeMethod('getValue');
    } on PlatformException catch (e) {
      value = '네이티브 코드 실행 에러 : ${e.message}';
    }

    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MethodChannel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_value'),
            RaisedButton(
              child: Text('네이티브 값 얻기'),
              onPressed: _getNativeValue,
            )
          ],
        ),
      ),
    );
  }
}
