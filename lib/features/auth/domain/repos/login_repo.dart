import 'package:task/features/auth/data/source/user_data_source.dart';

class LoginRepo {
  final UserDataSource dataSource;

  LoginRepo(this.dataSource);
  Future<bool> login(String email, String password) async {
    final user = await dataSource.getUsers();
    return user.any((user) => user.email == email && user.password == password);
  }
}
