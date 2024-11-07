import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class User extends Equatable {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? avatar;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.avatar,
  });

  User copyWith({
    int? newId,
    String? newFirstName,
    String? newLastName,
    String? newEmail,
    String? newAvatar,
  }) =>
      User(
        id: newId ?? id,
        firstName: newFirstName ?? firstName,
        email: newEmail ?? email,
        avatar: newAvatar ?? avatar,
        lastName: newLastName?? lastName,
      );

  @override
  List<Object?> get props => [
        id,
        firstName,
  lastName,
        email,
        avatar,

      ];
}
