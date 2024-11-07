import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import '../../../../controllers/app_configs/app_configs_bloc.dart';
import '../../../../core/utils/di.dart';
import '../../../widgets/adaptive_layout_builder.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/no_internet_view.dart';
import 'users_desktop_layout.dart';
import 'users_mobile_layout.dart';
import 'users_tablet_layout.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  UsersScreenState createState() => UsersScreenState();
}

class UsersScreenState extends State<UsersScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppConfigsBloc, AppConfigsState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: const CustomAppBar(),
          body: SafeArea(
            child: AppConfigsBloc.currentConnectionStatue ==
                    InternetConnectionStatus.disconnected
                ? const Center(child: NoInternetView())
                : RefreshIndicator(
                    color: Theme.of(context).colorScheme.onPrimaryFixed,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    onRefresh: () async {
                DependencyInjector.instance<UserBloc>().add(
                  ReloadUsersEvent()
                );
                    },
                    child: AdaptiveLayout(
                      mobileLayout: (context) => const UsersMobileLayout(),
                      tabletLayout: (context) => const UsersTabletLayout(),
                      desktopLayout: (context) => const UsersDesktopLayout(),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
