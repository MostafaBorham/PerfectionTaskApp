import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import 'controllers/app_configs/app_configs_bloc.dart';
import 'core/localization/strings.dart';
import 'core/routing/app_navigation_observer.dart';
import 'core/routing/app_routes.dart';
import 'core/routing/router.dart';
import 'core/utils/di.dart';
import 'ui/resources/app_responsive.dart';
import 'ui/resources/app_themes.dart';

class PerfectionTaskApp extends StatelessWidget {
  const PerfectionTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Responsive Init
    AppResponsive.context = context;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return DependencyInjector.instance<AppConfigsBloc>()
            ..listenToInternet();
        }),
        BlocProvider(create: (context) {
          final userBloc= DependencyInjector.instance<UserBloc>();
          return userBloc..add(GetUsersEvent(page: 1));
        }),
      ],
      child: BlocBuilder<AppConfigsBloc, AppConfigsState>(
        builder: (BuildContext context, AppConfigsState state) {
          return MaterialApp(
            title: AppStrings.appName,
            debugShowCheckedModeBanner: false,
            locale: context.locale,
            theme: AppThemes.getLightModeTheme(),
            darkTheme: AppThemes.getDarkModeTheme(),
            themeMode: AppConfigsBloc.appMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            onGenerateRoute: AppRouter.onGenerate,
            initialRoute: AppRoutes.usersScreen,
            navigatorObservers: [
              AppNavigationObserver(),
            ],
          );
        },
      ),
    );
  }
}
