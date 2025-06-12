import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/auth/data/models/user_model.dart';

class UserDataSource{
  Future<List<UserModel>> getUsers() async{
    var response = await rootBundle.loadString(JsonSource.users);
    final List users = jsonDecode(response);
    return users.map((e) => UserModel.fromJson(e)).toList();

  }
}