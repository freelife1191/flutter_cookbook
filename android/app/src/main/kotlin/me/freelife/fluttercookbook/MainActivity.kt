package me.freelife.fluttercookbook

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

//FlutterActivity를 상속받은 클래스
class MainActivity: FlutterActivity() {
  //static 하게 아무데서나 사용할 수 있는 상수를 지정할때 이렇게 지정
  companion object {
      //flutter의 MethodChannel에 정의한 주소와 똑같이 지정
      const val CHANNEL = "example.com/value"
  }

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)

    //FlutterActivity에서 상속받은 flutterView와 채널을 넣어
    MethodChannel(flutterView, CHANNEL).setMethodCallHandler { methodCall, result ->
      if(methodCall.method == "getValue") {
        //네이티브와 통신 성공시 성공
        result.success("성공")
      } else {
        result.notImplemented()
      }
    }
  }
}
