import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/cache_helper/cache_helper.dart';
import 'package:telgani/cubit/change_password_cubit/change_password_cubit.dart';
import 'package:telgani/cubit/login/login_cubit.dart';
import 'package:telgani/cubit/profile/profile_cubit.dart';
import 'package:telgani/screens/profile_screen.dart';
import 'package:telgani/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacherHelper.init();
  CacherHelper.getData(key: 'token');
  ProfileCubit().profile();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(create: (context) => ChangePasswordCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Rubik',
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
        home: CacherHelper.getData(key: 'token') != null &&
                CacherHelper.getData(key: 'token') != ''
            ? const ProfileScreen()
            : const LoginScreen(),
      ),
    );
  }
}
