import 'package:get_it/get_it.dart';
import 'package:task/features/auth/data/source/user_data_source.dart';
import 'package:task/features/auth/domain/repos/login_repo.dart';
import 'package:task/features/auth/domain/repos/signup_repi.dart';
import 'package:task/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:task/features/home/data/domain/repos/offers_repo.dart';
import 'package:task/features/home/data/source/offer_data_source.dart';
import 'package:task/features/home/presentation/cubits/offers/offers_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  //  Auth
  getIt.registerLazySingleton<UserDataSource>(() => UserDataSource());

  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt<UserDataSource>()),
  );
  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(getIt<UserDataSource>()),
  );

  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  getIt.registerLazySingleton<SignupCubit>(
    () => SignupCubit(getIt<SignUpRepo>()),
  );

  //  Home / Offers
  getIt.registerLazySingleton<OfferDataSource>(() => OfferDataSource());
  getIt.registerLazySingleton<OffersRepo>(
    () => OffersRepo(getIt<OfferDataSource>()),
  );
  getIt.registerLazySingleton<OffersCubit>(
    () => OffersCubit(getIt<OffersRepo>()),
  );
}
