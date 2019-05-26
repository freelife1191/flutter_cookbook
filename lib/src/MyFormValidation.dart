import 'package:flutter/material.dart';

/**
 * Form Validation 예제 위젯
 */
class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>(); //Form의 GlobalKey를 만들고 Form의 상태를 알수 있게 하기위해 FormState 제네릭을 추

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Form(
        key: _formKey, //_formKey를 지정하면 이제부터 FormState를 통해 _formKey를 알 수 있게
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //완료버튼을 완쪽으로 붙이기
        children: <Widget>[
          TextFormField(
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
          )
        ],
      ))
    );
  }
}
