import 'package:flutter/material.dart';
import 'package:perfection_task/ui/resources/app_responsive.dart';
import '../../core/localization/strings.dart';
import '../resources/app_styles.dart';

void showNormalSnackBar({required BuildContext context, String? message}) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message ?? AppStrings.noMessageError,
          style: AppStyles.getBoldStyle(
              fontSize: 15.s(),
              color: Theme.of(context).colorScheme.onPrimaryFixed),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
}

void showSuccessSnackBar({required BuildContext context, String? message}) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message ?? AppStrings.noMessageError,
          style: AppStyles.getBoldStyle(
              fontSize: 15.s(),
              color: Theme.of(context).colorScheme.onPrimaryFixed),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
    );
}

void showErrorSnackBar({required BuildContext context, String? message}) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message ?? AppStrings.noMessageError,
          style: AppStyles.getBoldStyle(
              fontSize: 15.s(),
              color: Theme.of(context).colorScheme.onPrimaryFixed),
        ),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
    );
}
