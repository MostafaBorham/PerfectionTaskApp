import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:perfection_task/core/extensions/theme_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../controllers/app_configs/app_configs_bloc.dart';
import '../../constants/app_keys.dart';

abstract class CacheService {
  //////////////////////////////////////////////////////////////////
  static SharedPreferences? _preferences;
  static FlutterSecureStorage? _secureStorage;
  ///////////////////////////////////////////////////////////////////
  static Future<void> init() async {
    _preferences ??= await SharedPreferences.getInstance();
    _secureStorage = const FlutterSecureStorage();
    AppConfigsBloc.appMode = await getAppMode();
  }

/////////////////////////////////////////////////////////////////////
  static Future saveAppMode({required ThemeMode mode}) async {
    var modeValue = mode.name.toString();
    return await _secureStorage?.write(
        key: AppKeys.appModeKey, value: modeValue);
  }

  static Future<ThemeMode> getAppMode() async {
    var modeJson = await _secureStorage?.read(key: AppKeys.appModeKey) ?? '';
    return modeJson.getThemeMode();
  }
}
