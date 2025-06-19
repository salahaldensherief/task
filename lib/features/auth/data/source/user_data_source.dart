import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/auth/data/models/user_model.dart';

class UserDataSource {
  Future<List<UserModel>> getUsers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? gUsers = prefs.getString('users');
    if (gUsers != null) {
      final List users = jsonDecode(gUsers);
      return users.map((e) => UserModel.fromJson(e)).toList();
    }
    var response = await rootBundle.loadString(JsonSource.users);
    final List users = jsonDecode(response);
    return users.map((e) => UserModel.fromJson(e)).toList();
  }

  Future<bool> addUser(UserModel newUser) async {
    try {
      List<UserModel> users = await getUsers();
      if (users.any((user) => user.email == newUser.email)) {
        return false;
      }
      users.add(newUser);
      List<Map<String, dynamic>> usersJson =
          users
              .map(
                (user) => {
                  'name': user.name,
                  'email': user.email,
                  'password': user.password,
                },
              )
              .toList();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('users', jsonEncode(usersJson));
      return true;
    } catch (e) {
      return false;
    }
  }
}
