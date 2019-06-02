import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    let controller = self.window.rootViewController as! FlutterViewController
    
    let channel = FlutterMethodChannel.init(name: "example.com/value", binaryMessenger: controller)
    channel.setMethodCallHandler{(call, result) in
        if "getValue" == call.method {
            result("성공")
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
