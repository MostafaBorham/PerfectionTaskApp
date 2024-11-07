import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfection_task/controllers/user/user_bloc.dart';
import 'package:perfection_task/core/constants/app_constants.dart';
import 'package:perfection_task/core/localization/strings.dart';
import 'package:perfection_task/core/utils/functions/open_email.dart';
import 'package:perfection_task/domains/entities/user.dart';
import 'package:perfection_task/ui/components/toasts.dart';
import 'package:perfection_task/ui/resources/app_responsive.dart';
import '../../core/constants/app_durations.dart';
import '../resources/app_colors.dart';
import '../resources/app_styles.dart';
import 'draggable_sheet_indicator.dart';

class DraggableProductDetailsSheet extends StatelessWidget {
  const DraggableProductDetailsSheet({super.key, required this.user});

  final User user;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5, // Initial height as 20% of screen
      minChildSize: 0.5, // Minimum height (collapsed state)
      maxChildSize: 1, // Maximum height (expanded state)
      snap: true,
      snapAnimationDuration: AppDurations.d500Milli,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black_opc20,
                spreadRadius: 15,
                blurRadius: 30,
              ),
            ],
          ),
          child: ListView(
            controller: scrollController,
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w()),
            children: [
              const Center(
                child: DraggableSheetIndicator(),
              ),
              const SizedBox(
                height: 30,
              ),
              // Product Name
              AutoSizeText(
                '${user.firstName ?? ''} ${user.lastName ?? ''}',
                style: AppStyles.getBoldStyle(
                    color: Theme.of(context).colorScheme.onPrimaryFixed,
                    fontSize: 30.s()),
              ),
              const SizedBox(height: 30),

              // Product Description
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.surface,
                    size: 30.s(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  AutoSizeText.rich(TextSpan(
                      text: '${AppStrings.uid} : ',
                      style: AppStyles.getBoldStyle(
                        fontSize: 20.s(),
                        color: Theme.of(context).colorScheme.onPrimaryFixed
                      ),
                      children: [
                        TextSpan(
                            text: '${user.id}',
                            style: AppStyles.getMediumStyle(
                              fontSize: 20.s(),
                              color: Theme.of(context).colorScheme.onPrimaryFixed,
                            ))
                      ])),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Icon(
                    Icons.alternate_email,
                    color: Theme.of(context).colorScheme.surface,
                    size: 30.s(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  BlocListener<UserBloc, UserState>(
                    listener: (context, state) {
                      if(state is FailOpenEmailState){
                        showErrorToast(context: context, message: state.failMessage);
                      }
                    },
                    child: GestureDetector(
                      onTap: () {
                        UserBloc.get(context).add(OpenUserEmailEvent(
                            mailInfo: MailInfo(
                          email: user.email ?? '',
                          body:
                              '${AppConstants.hello}, ${user.firstName} ${user.lastName}',
                          subject: AppConstants.myMessage,
                        )));
                      },
                      child: AutoSizeText('${user.email}',
                          style: AppStyles.getSemiBoldStyle(
                              fontSize: 20.s(),
                              color: Theme.of(context).colorScheme.onPrimaryFixed,
                              textDecoration: TextDecoration.underline,
                              decorationColor: AppColors.blue_2c6881)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
