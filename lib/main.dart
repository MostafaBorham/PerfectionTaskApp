import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_init.dart';
import 'core/localization/configs.dart';
import 'core/services/local/cache_service.dart';
import 'core/services/network/dio_service.dart';
import 'core/utils/di.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DependencyInjector.init();
  await EasyLocalization.ensureInitialized();
  await CacheService.init();
  DioService.init();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(const LocalizationInit(child: PerfectionTaskApp())));
}
