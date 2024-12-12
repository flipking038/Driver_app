import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/constant.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  Dio dio = Dio();

  static String? name;
  static String? company;

  Future<dynamic> profile() async {
    emit(ProfileLoading());
    try {
      dio.options.headers['Authorization'] = "Bearer $token";

      final Response response =
          await dio.get('https://api.dev.telgani.com/api/v4/driver/profile');

      name = response.data['data']['name'];
      company = response.data['data']['company']['names']['en'];
      emit(ProfileSuccess());
    } catch (e) {
      emit(ProfileFailure(message: e.toString()));
    }
  }
}
