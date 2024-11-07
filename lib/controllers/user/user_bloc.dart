import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfection_task/core/utils/functions/open_email.dart';
import 'package:perfection_task/data/network/repo.dart';

import '../../domains/entities/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  static const int usersTotalPages = 2;
  int currentUsersPage = 0;
  List<User> usersList = [];
  /////////////////////////////////////////////////////////////////
  static UserBloc get(BuildContext context) =>
      BlocProvider.of<UserBloc>(context);

  UserBloc() : super(UserInitial()) {
    on<GetUsersEvent>(_getUsers);
    on<ReloadUsersEvent>(_reloadUsers);
    on<OpenUserEmailEvent>(_openUserEmail);
  }

  /////////////////////////////////////////////////////////////////

  FutureOr<void> _getUsers(
      GetUsersEvent event, Emitter<UserState> emit) async {
    if (state is! LoadingUsersState && currentUsersPage!=event.page) {
      currentUsersPage=event.page;
      emit(LoadingUsersState());
      final result = await NetworkRepo.getAllUsers(page: currentUsersPage);
      await result.fold(
        (failure) {
          emit(FailGetUsersState(failMessage: failure.message!));
        },
        (allUsersList) async {
          usersList.clear();
          usersList.addAll(allUsersList);
          emit(SuccessGetUsersState());
        },
      );
    }
  }

  FutureOr<void> _reloadUsers(ReloadUsersEvent event, Emitter<UserState> emit) async{
    if (state is! LoadingUsersState) {
      emit(LoadingUsersState());
      final result = await NetworkRepo.getAllUsers(page: currentUsersPage);
      await result.fold(
            (failure) {
          emit(FailGetUsersState(failMessage: failure.message!));
        },
            (allUsersList) async {
              usersList.clear();
          usersList.addAll(allUsersList);
          emit(SuccessGetUsersState());
        },
      );
    }
  }

  FutureOr<void> _openUserEmail(OpenUserEmailEvent event, Emitter<UserState> emit) async{
    if(state is! WaitingOpenEmailState){
      emit(WaitingOpenEmailState());
      final result= await openEmail(event.mailInfo);
      await result.fold(
            (failure) {
          emit(FailOpenEmailState(failMessage: failure.message!));
        },
            (_) async {
          emit(SuccessOpenEmailState());
        },
      );
    }
  }
}
