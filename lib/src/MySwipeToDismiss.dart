import 'package:flutter/material.dart';

/**
 * 스와이프를 했을때 아이템을 날리는 기능
 */
class MySwipeToDismiss extends StatefulWidget {
  @override
  _MySwipeToDismissState createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}"); //랜덤으로 아이템 생성
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe To Dismiss'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              background: Container(color: Colors.red), //스와이프 할때 뒷배경 색깔을 줄 수 있음
              direction: DismissDirection.startToEnd, //원하는 방향 지정
              onDismissed: (direction) {
                setState(() {
                  //if(direction == DismissDirection.startToEnd) { //위에 지정을 하지 않고 if문으로 분기처리 할 수 있음
                    items.removeAt(index); //일치하는 아이템을 실제로 삭제저장처리
                  //}
                });
              },
              child: ListTile(
                title: Text('${items[index]}'),
              ),
              key: Key(item),
            );
          }),
    );
  }
}
