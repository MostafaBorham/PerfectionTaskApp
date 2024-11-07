part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetUsersEvent extends UserEvent {
  final int page;

  GetUsersEvent({required this.page});
}

class OpenUserEmailEvent extends UserEvent {
  final MailInfo mailInfo;

  OpenUserEmailEvent({required this.mailInfo});
}

class ReloadUsersEvent extends UserEvent {}
