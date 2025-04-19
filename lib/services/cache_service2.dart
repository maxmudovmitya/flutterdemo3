// import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
//
// class CacheService2{
//  static final EncryptedSharedPreferences prefs = EncryptedSharedPreferences();
//
//  static Future<void> storeName(String name) async {
//   await prefs.setString("name", name);
//  }
//
//  static Future<String> loadName() async{
//   return await prefs.getString("name");
//  }
//
//  static Future<void> removeName() async {
//   await prefs.remove("name");
//   }
//  }