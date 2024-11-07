import '../entities/user.dart';
import '../models/user_model.dart';

extension UserModelExt on UserModel {
  User toEntity() => User(
    id: id,
    firstName: firstName,
    email: email,
    avatar: avatar,
    lastName: lastName,
  );
}

extension UserExt on User {
  UserModel toModel() => UserModel(
    id: id,
    firstName: firstName,
    lastName: lastName,
    email: email,
    avatar: avatar,
  );
}
