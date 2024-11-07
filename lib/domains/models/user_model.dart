import '../../core/constants/app_keys.dart';
import '../entities/user.dart';

// ignore: must_be_immutable
class UserModel extends User {
  UserModel({
    super.id,
    super.firstName,
    super.email,
    super.avatar,
    super.lastName
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json[AppKeys.idKey] ?? -1,
    firstName: json[AppKeys.firstNameKey] ?? '',
    lastName: json[AppKeys.lastNameKey] ?? '',
    email: json[AppKeys.emailKey] ?? '',
    avatar: json[AppKeys.avatarKey] ?? '',
  );

  Map<String,dynamic> toJson()=>{
    AppKeys.idKey : id,
    AppKeys.firstNameKey : firstName,
    AppKeys.lastNameKey : lastName,
    AppKeys.emailKey : email,
    AppKeys.avatarKey : avatar,
  };
}
