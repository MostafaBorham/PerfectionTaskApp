import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import 'package:perfection_task/ui/components/toasts.dart';
import 'package:perfection_task/ui/resources/app_responsive.dart';
import 'package:perfection_task/ui/widgets/circular_loader.dart';
import '../../../../core/localization/strings.dart';
import '../../../resources/app_styles.dart';
import '../../../widgets/users_list.dart';

class UsersMobileLayout extends StatefulWidget {
  const UsersMobileLayout({super.key});

  @override
  UsersMobileLayoutState createState() => UsersMobileLayoutState();
}

class UsersMobileLayoutState extends State<UsersMobileLayout> {
  late final UserBloc _userBloc;

  @override
  void initState() {
    _userBloc=UserBloc.get(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      buildWhen: _buildUsersListWhen,
      listener: (context, state) {
        if(state is FailGetUsersState){
          showErrorToast(context: context, message: state.failMessage);
        }
      },
      builder: (context, state) {
        return _buildUsersUi(state);
      },
    );
  }

  bool _buildUsersListWhen(UserState previous, UserState current) {
    return current is LoadingUsersState ||
        current is SuccessGetUsersState ||
        current is FailGetUsersState;
  }

  Widget _buildUsersUi(UserState state) {
    if (state is LoadingUsersState) {
      return CircularLoader(
        color: Theme.of(context).colorScheme.surface,
        size: 35.s(),
      );
    } else if (_userBloc.usersList.isEmpty) {
      return Center(
        child: SizedBox(
          width: double.infinity,
          height: AppResponsive.currentHeight*0.8,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: AppResponsive.currentHeight*0.8,
                width: double.infinity,
                child: Center(
                  child: AutoSizeText(
                    AppStrings.noCurrentUserError,
                    style: AppStyles.getBoldStyle(
                        color: Theme.of(context).colorScheme.onPrimaryFixed,
                        fontSize: 30.s()),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (_userBloc.usersList.isNotEmpty) {
      return const UsersList();
    } else {
      return const SizedBox.shrink();
    }
  }
}
