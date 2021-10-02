This is Flutter package to wrap request for openBD.
https://openbd.jp/

## Features

It's able to fetch bibliography from openBD.
Please see also https://openbd.jp/.

## Getting started

Add `flutter_openbd` to `pubspec.yaml` like below.

```dart
dependencies:
  flutter:
    sdk: flutter

  flutter_openbd:
    git:
      url: git@github.com:meganii/flutter_openbd.git
      ref: master
```

## Usage

```dart
var openbd = FlutterOpenBD();
OpenBD res = await openbd.getISBN('9784780802047');
```
