import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import 'package:perfection_task/ui/resources/app_colors.dart';
import 'package:perfection_task/ui/resources/app_responsive.dart';

class UsersListPaginationWidget extends StatefulWidget {
  const UsersListPaginationWidget({super.key});

  @override
  State<UsersListPaginationWidget> createState() => _UsersListPaginationWidgetState();
}

class _UsersListPaginationWidgetState extends State<UsersListPaginationWidget> {
  late final UserBloc _userBloc;

  @override
  void initState() {
    _userBloc=UserBloc.get(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return NumberPagination(
        onPageChanged: (currentPage) {
          _userBloc.add(GetUsersEvent(page: currentPage));
        },
        buttonElevation: 5,
        buttonRadius: 15.w(),
        controlButtonColor: Theme.of(context).colorScheme.surface,
        selectedButtonColor: AppColors.black,
        unSelectedButtonColor: AppColors.white,
        selectedNumberColor: AppColors.white,
        unSelectedNumberColor: AppColors.black,
        totalPages: UserBloc.usersTotalPages,
        currentPage: _userBloc.currentUsersPage);
  }
}
