part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserInitial extends UserState {}

/// Get All Users States
class LoadingUsersState extends UserState {}

class FailGetUsersState extends UserState {
  final String failMessage;

  FailGetUsersState({required this.failMessage});

  @override
  List<Object?> get props => [
        failMessage,
      ];
}

class SuccessGetUsersState extends UserState {}

/// Open Email States
class WaitingOpenEmailState extends UserState {}

class FailOpenEmailState extends UserState {
  final String failMessage;

  FailOpenEmailState({required this.failMessage});

  @override
  List<Object?> get props => [
        failMessage,
      ];
}

class SuccessOpenEmailState extends UserState {}