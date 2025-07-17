import 'package:task/features/auth/data/source/user_data_source.dart';

import '../../data/models/user_model.dart';

class LoginRepo {
  final UserDataSource dataSource;
  LoginRepo(this.dataSource);
  Future<UserModel?> getLoggedInUser(String email, String password) async {
    final users = await dataSource.getUsers();
    return users.firstWhere(
          (user) => user.email == email && user.password == password,

    );
  }

}
