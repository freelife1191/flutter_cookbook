import 'package:flutter/material.dart';

/**
 * 하단 SnackBar 에졔 위젯
 */
class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Builder( // Scaffold 안에 body를 만들때 Builder로 새로운 컨텍스트를 만들고 그 안에 화면을 만들 수 있음
            builder: (context) => Center(
                  child: RaisedButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: Text('메일이 삭제 되었습니'), //SnackBar 메세
                        action: SnackBarAction(label: '취소', onPressed: () {
                          //눌렀을 때 처리
                        }),
                      );

                      Scaffold.of(context).showSnackBar(snackBar); //Scaffold.of를 사용하면 다른 Scaffold 안에서 사용하면 안된다고 에러 Builder 로 해결
                    },
                    child: Text('Show SnackBar'),
                  ),
                )));
  }
}
