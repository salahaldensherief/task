import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/repos/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
 final LoginRepo loginRepo;
 Future<void> login(String email ,String password) async{
   emit(LoginLoading());
   try {
     final res = await loginRepo.login(email, password);
     if(res){
       emit(LoginSuccess());
     }else{
       emit(LoginFailure('Invalid email or password'));
     }
   } on Exception catch (e) {
     emit(LoginFailure('Something wrong try later'));
   }
 }
}
