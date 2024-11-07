import '../errors/exceptions.dart';
import 'app_durations.dart';

abstract class NetworkConstants{
  static const String apiKey='';
  static const String serverKey = '';
  static const String baseUrl='https://reqres.in/api/users/';
  static const String jsonContentType='application/json';
  static const String contentType='Content-Type';
  static const String accept = "Accept";
  static const int successStatusCode = 200;
  static const int failStatusCode = 404;
  static const String bearerAuthPrefix = 'Bearer';
  static const String keyEqualPrefix = 'key=';
  static const Duration timeoutDuration = AppDurations.d15Sec;
//////////////////////////////////////////////////////////////////////
  static callTimeOutCallback() => throw TimeOutException();
}