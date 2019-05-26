import 'package:flutter/material.dart';

/**
 * Form Validation 예제 위젯
 */
class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>(); //Form의 GlobalKey를 만들고 Form의 상태를 알수 있게 하기위해 FormState 제네릭을 추가
  FocusNode nameFocusNode; //포커스를 위한 노드 생성 후 해제를 해줘야 함

  final nameController = TextEditingController(); //텍스트 필드의 값을 컨트롤하기 위한 변수

  @override
  void initState() {
    super.initState();
    nameFocusNode = FocusNode(); //화면이 나올때 FocusNode 생성
  }

  @override
  void dispose() {
    nameFocusNode.dispose(); //화면이 없어지기 전에 해제
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey, //_formKey를 지정하면 이제부터 FormState를 통해 _formKey를 알 수 있게
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //완료버튼을 완쪽으로 붙이기
          children: <Widget>[
            TextFormField( //Form 안에 있을때 validate 기능을 사용할 수 있음
              validator: (value) { //아래에서 validate 체크시 실행
                if(value.isEmpty) {
                  return '공백은 허용되지 않습니다';
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()) { //현재의 formState의 validate 체크
                    //valid
                    Scaffold.of(_formKey.currentContext) //formKey의 context를 사용하여 SnackBar 사용
                        .showSnackBar(SnackBar(content: Text('처리중')));
                  }
                },
                child: Text('완료'),
              ),
            ),
            TextField( //validate 기능이 없는 일반 field
              controller: nameController, //텍스트 필드의 값을 가져올 대상 필드의 controller 속성에 지정
              onChanged: (text) { //변경될 때 마다 텍스트가 넘어옴
                print(text);
              },
              focusNode: nameFocusNode, //포커스를 가지고 싶은 곳에 nameFocusNode 지정
              decoration: InputDecoration(
                hintText: '이름을 입력해 주세요', //placeholder와 비슷한 기능
                border: InputBorder.none, // border을 안보이게
                labelText: '이름' //label 지정
              ),
              autofocus: true, // 화면 진입 시 autofocus 가 true인 필드에 focus 됨
            ),
            RaisedButton(
              onPressed: () {
                FocusScope.of(context).requestFocus(nameFocusNode); //nameFocusNode 가 지정된 곳으로 포커스를 이동시켜줌
              },
              child: Text('포커스'),
            ),
            RaisedButton(
              onPressed: () {
                print(nameController.text); //nameController 가 지정된 텍스트 값을 가져오기
                showDialog(context: context, //얻어온 텍스트 값을 다이얼로그에 띄우기
                  builder: (context) {
                    return AlertDialog(
                      content: Text(nameController.text),
                    );
                  }
                );
              },
              child: Text('TextField 값 확인'),
            )
          ],
        )),
      )
    );
  }
}
