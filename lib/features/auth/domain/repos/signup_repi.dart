import '../../data/models/user_model.dart';
import '../../data/source/user_data_source.dart';

class SignUpRepo {
  final UserDataSource dataSource;

  SignUpRepo(this.dataSource);

  Future<bool> signUp(String name, String email, String password) async {
    final newUser = UserModel(name: name, email: email, password: password);
    return await dataSource.addUser(newUser);
  }
}