import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'loaclization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationState(const Locale('en')));

  void changeLanguage(String language){
    emit(LocalizationState(Locale(language)));
  }
}