import 'errors.dart';

class InvalidPageNumberException implements Exception {
  @override
  String toString() {
    return AppErrors.invalidPageNumberMessage;
  }
}

class TimeOutException implements Exception {
  @override
  String toString() {
    return AppErrors.timeoutMessage;
  }
}

class NoCurrentUserException implements Exception {
  @override
  String toString() {
    return AppErrors.noCurrentUserMessage;
  }
}

class NoDeviceTokenException implements Exception {
  @override
  String toString() {
    return AppErrors.noDeviceTokenMessage;
  }
}

class NoImagePickedException implements Exception {
  @override
  String toString() {
    return AppErrors.noImagePickedMessage;
  }
}

class CacheException implements Exception {
  @override
  String toString() {
    return AppErrors.cacheErrorMessage;
  }
}
