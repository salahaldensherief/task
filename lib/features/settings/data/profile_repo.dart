import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../auth/data/models/user_model.dart';

class ProfileRepo {
  Future<UserModel?> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('loggedUser');
    if (userJson != null) {
      final userMap = jsonDecode(userJson);
      return UserModel.fromJson(userMap);
    }
    return null;
  }
  Future<void> updateUserData({
    required String name,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('loggedUser');
    if (userJson != null) {
      final userMap = jsonDecode(userJson);
      userMap['name'] = name;
      userMap['password'] = password;
      final updatedJson = jsonEncode(userMap);
      await prefs.setString('loggedUser', updatedJson);
    }
  }
}