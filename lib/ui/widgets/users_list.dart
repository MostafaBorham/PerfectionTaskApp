import 'package:flutter/material.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import 'package:perfection_task/ui/resources/app_responsive.dart';
import 'package:perfection_task/ui/widgets/users_list_pagination_widget.dart';

import 'separate_line.dart';
import 'user_item.dart';

class UsersList extends StatefulWidget {
  const UsersList({
    super.key,
  });

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  late final UserBloc _userBloc;

  @override
  void initState() {
   _userBloc=UserBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              itemCount: _userBloc.usersList.length,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w()),
                child: const SeparateLine(
                  thickness: 2,
                  height: 5,
                ),
              ),
              itemBuilder: (context, index) => UserItem(user: _userBloc.usersList[index],)
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: UsersListPaginationWidget(),
        ),
      ],
    );
  }
}