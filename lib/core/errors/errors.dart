import '../localization/strings.dart';

abstract class AppErrors{
  static String offlineErrorMessage= AppStrings.offlineError;
  static String serverErrorMessage= AppStrings.serverError;
  static String cacheErrorMessage= AppStrings.cacheError;
  static String invalidPageNumberMessage= AppStrings.invalidPageNumberError;
  static String timeoutMessage= AppStrings.timeoutError;
  static String noCurrentUserMessage= AppStrings.noCurrentUserError;
  static String noDeviceTokenMessage= AppStrings.noDeviceTokenError;
  static String noImagePickedMessage= AppStrings.noImagePickedError;
  static String noInternetConnectionMessage= AppStrings.noInternetConnectionError;
  static String unknownErrorMessage= AppStrings.unknownError;
}