import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import 'package:uuid/uuid.dart';
import '../../controllers/app_configs/app_configs_bloc.dart';

abstract class DependencyInjector {
  static final instance = GetIt.instance;

  static void init() {

    ///Blocs
    ///-> AppConfigsBloc
    instance.registerLazySingleton<AppConfigsBloc>(() => AppConfigsBloc());
    ///-> UserBloc
    instance.registerLazySingleton<UserBloc>(() => UserBloc());

    ///Network Connection
    instance.registerLazySingleton<InternetConnectionChecker>(
        () => InternetConnectionChecker());

    ///Image Picker
    instance.registerLazySingleton<ImagePicker>(
            () => ImagePicker());

    ///UUID
    instance.registerLazySingleton<Uuid>(
            () => const Uuid());
  }
}
