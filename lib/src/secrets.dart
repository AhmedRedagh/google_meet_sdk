import 'dart:io';

class Secret {
  static const androidClientId = "<enter your Android client secret>";
  static const iosClientId = "<enter your iOS client secret>";
  static String getId() => Platform.isAndroid ? Secret.androidClientId : Secret.iosClientId;
}
