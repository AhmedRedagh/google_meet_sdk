import 'dart:io';

class Secret {
  static const ANDROID_CLIENT_ID = "513910323072-n56olbvej8g9mcku3145bmv3hae2hgnj.apps.googleusercontent.com";
  static const IOS_CLIENT_ID = "<enter your iOS client secret>";
  static String getId() => Platform.isAndroid ? Secret.ANDROID_CLIENT_ID : Secret.IOS_CLIENT_ID;
}
