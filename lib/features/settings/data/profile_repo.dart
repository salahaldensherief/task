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
    print('Loaded from prefs: $userJson');

    return null;
  }
}