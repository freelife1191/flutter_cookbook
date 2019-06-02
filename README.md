# fluttercookbook

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## 네이티브코드 연동 - 안드로이드 SDK Setup
안드로이드 MainActivity 에서 오류표시가 되면  
상단의 알림 창을 클릭해서 SDK Setup을 진행해주면 됨

### fluro 디펜던시 추가
`pubspec.yaml` 파일에 `fluro: ^1.4.0` 디펜던시 추가

### buildscript
버전 변수 지정 `ext.butterknifeVersion = '10.1.0'`

### butterknife 추가
```
apply plugin: 'kotlin-android-extensions'
apply plugin: 'kotlin-kapt'


implementation "com.jakewharton:butterknife:$butterknifeVersion"
implementation "com.jakewharton:butterknife-annotations:$butterknifeVersion"
kapt "com.jakewharton:butterknife-compiler:$butterknifeVersion"
```