import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/core/helper/%20Injection/git_it.dart';
import 'package:task/core/helper/app_routes.dart';
import 'package:task/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task/features/settings/presentation/views/cubits/loaclization_state.dart';
import 'features/auth/presentation/views/sign_in_view.dart';
import 'features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'features/settings/presentation/views/cubits/loaclization_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  final prefs = await SharedPreferences.getInstance();
  final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(Task(isLoggedIn: isLoggedIn));
}

class Task extends StatelessWidget {
  final bool isLoggedIn;

  const Task({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              locale: Locale(state.locale.languageCode),
              debugShowCheckedModeBanner: false,
              title: 'Task App',
              theme: ThemeData(scaffoldBackgroundColor: Colors.white),
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              initialRoute:
                  isLoggedIn ? BottomNavBar.routeName : SignInView.routeName,
              onGenerateRoute: onGenerateRoute,
            ),
          );
        },
      ),
    );
  }
}
