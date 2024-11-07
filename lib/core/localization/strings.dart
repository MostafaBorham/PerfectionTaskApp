import 'package:easy_localization/easy_localization.dart';

abstract class AppStrings {
  static const String _appName = 'appName';
  static const String _languageBtnTxt = 'languageBtnTxt';
  static const String _uid = 'uid';
  ///errors
  static const String _offlineError = 'offlineErrorMsg';
  static const String _serverError = 'serverErrorMsg';
  static const String _cacheError = 'cacheErrorMsg';
  static const String _invalidPageNumberError = 'invalidPageNumberErrorMsg';
  static const String _timeoutError = 'timeoutErrorMsg';
  static const String _noCurrentUserError = 'noCurrentUserError';
  static const String _noDeviceTokenError = 'noDeviceTokenError';
  static const String _noImagePickedError = 'noImagePickedError';
  static const String _noInternetConnectionError = 'noInternetConnectionError';
  static const String _unknownError = 'unknownError';
  static const String _noMessageError = 'noMessageError';

  ///

  ///Validation Messages
  static const String _nameRequired = 'nameRequired';
  static const String _descriptionRequired = 'descriptionRequired';
  static const String _priceShouldBeDigits = 'priceShouldBeDigits';
  static const String _priceRequired = 'priceRequired';
  static const String _nameTooShort = 'nameTooShort';
  static const String _descriptionTooShort = 'descriptionTooShort';
  static const String _nameAlphabetOnly = 'nameAlphabetOnly';
  static const String _nameFormatInvalid = 'nameFormatInvalid';
  static const String _emailRequired = 'emailRequired';
  static const String _emailTooShort = 'emailTooShort';
  static const String _emailFormatInvalid = 'emailFormatInvalid';
  static const String _passwordRequired = 'passwordRequired';
  static const String _passwordTooShort = 'passwordTooShort';
  static const String _passwordFormatInvalid = 'passwordFormatInvalid';
  static const String _password1Uppercase = 'password1Uppercase';
  static const String _password1Lowercase = 'password1Lowercase';
  static const String _password1SpecialCharacter = 'password1SpecialCharacter';
  static const String _password1Digit = 'password1Digit';
  static const String _phoneRequired = 'phoneRequired';
  static const String _phoneTooShort = 'phoneTooShort';
  static const String _phoneFormatInvalid = 'phoneFormatInvalid';
  static const String _productCategoryIsRequired = 'productCategoryIsRequired';
  static const String _productImageIsRequired = 'productImageIsRequired';

  /////////////////////////////////////////////////////////////////

  static String get nameRequired => _nameRequired.tr();
  static String get descriptionRequired => _descriptionRequired.tr();
  static String get priceShouldBeDigits => _priceShouldBeDigits.tr();
  static String get priceRequired => _priceRequired.tr();
  static String get nameTooShort => _nameTooShort.tr();
  static String get descriptionTooShort => _descriptionTooShort.tr();
  static String get nameAlphabetOnly => _nameAlphabetOnly.tr();
  static String get nameFormatInvalid => _nameFormatInvalid.tr();
  static String get emailRequired => _emailRequired.tr();
  static String get emailTooShort => _emailTooShort.tr();
  static String get emailFormatInvalid => _emailFormatInvalid.tr();
  static String get passwordRequired => _passwordRequired.tr();
  static String get passwordTooShort => _passwordTooShort.tr();
  static String get passwordFormatInvalid => _passwordFormatInvalid.tr();
  static String get phoneRequired => _phoneRequired.tr();
  static String get phoneTooShort => _phoneTooShort.tr();
  static String get phoneFormatInvalid => _phoneFormatInvalid.tr();
  static String get password1Lowercase => _password1Lowercase.tr();
  static String get password1Uppercase => _password1Uppercase.tr();
  static String get password1Digit => _password1Digit.tr();
  static String get password1SpecialCharacter =>
      _password1SpecialCharacter.tr();

  static String get appName => _appName.tr();
  static String get languageBtnTxt => _languageBtnTxt.tr();
  static String get uid => _uid.tr();

  static String get noInternetConnectionError => _noInternetConnectionError.tr();
  static String get unknownError => _unknownError.tr();
  static String get noMessageError => _noMessageError.tr();


  static String get offlineError => _offlineError.tr();

  static String get serverError => _serverError.tr();

  static String get cacheError => _cacheError.tr();

  static String get invalidPageNumberError => _invalidPageNumberError.tr();

  static String get timeoutError => _timeoutError.tr();

  static String get noCurrentUserError => _noCurrentUserError.tr();

  static String get noDeviceTokenError => _noDeviceTokenError.tr();

  static String get noImagePickedError => _noImagePickedError.tr();

  static String get productCategoryIsRequired =>
      _productCategoryIsRequired.tr();

  static String get productImageIsRequired => _productImageIsRequired.tr();
}