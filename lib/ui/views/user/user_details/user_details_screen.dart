import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../../controllers/app_configs/app_configs_bloc.dart';
import '../../../../domains/entities/user.dart';
import '../../../widgets/adaptive_layout_builder.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/no_internet_view.dart';
import 'user_details_desktop_layout.dart';
import 'user_details_mobile_layout.dart';
import 'user_details_tablet_layout.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key, required this.user});

  final User user;
  @override
  UserDetailsScreenState createState() => UserDetailsScreenState();
}

class UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppConfigsBloc, AppConfigsState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            leading: IconButton(onPressed: () {
              Navigator.maybePop(context);
            }, icon: Icon(Icons.arrow_back_ios,color: Theme.of(context).colorScheme.onPrimaryFixed,)),
          ),
          body: SafeArea(
            child: AppConfigsBloc.currentConnectionStatue ==
                    InternetConnectionStatus.disconnected
                ? const Center(child: NoInternetView())
                : AdaptiveLayout(
                    mobileLayout: (context) => UserDetailsMobileLayout(
                      user: widget.user,
                    ),
                    tabletLayout: (context) =>
                        const UserDetailsTabletLayout(),
                    desktopLayout: (context) =>
                        const UserDetailsDesktopLayout(),
                  ),
          ),
        );
      },
    );
  }
}
