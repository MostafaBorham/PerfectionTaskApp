import 'package:dio/dio.dart';
import '../../constants/network_constants.dart';

abstract class DioService {
  static Dio? userDio;

  static init() {
    userDio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      baseUrl: NetworkConstants.baseUrl,
      responseType: ResponseType.json,
      contentType: NetworkConstants.jsonContentType,
      connectTimeout: NetworkConstants.timeoutDuration,
    ));
  }

  static Future<Response> getUserData(
      {String? endPoint,
        Map<String, dynamic>? body,
        Map<String, dynamic>? params}) async {
    return await userDio!.get(
      endPoint??'',
      data: body,
      queryParameters: params,
    );
  }

  static Future<Response> postUserData(
      {String? endPoint,
        Map<String, dynamic>? body,
        Map<String, dynamic>? params}) async {
    return await userDio!.post(endPoint??'', data: body, queryParameters: params);
  }
}