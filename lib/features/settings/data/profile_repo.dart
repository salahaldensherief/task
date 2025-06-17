import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';
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
  Future<void> signOut(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('loggedUser');
    Navigator.pushReplacementNamed(context, SignInView.routeName);
  }
}