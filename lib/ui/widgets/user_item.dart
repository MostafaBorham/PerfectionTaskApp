import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart' as easy_locale;
import 'package:flutter/material.dart';
import 'package:perfection_task/core/constants/app_keys.dart';
import 'package:perfection_task/core/localization/strings.dart';
import 'package:perfection_task/core/routing/app_routes.dart';
import 'package:perfection_task/domains/entities/user.dart';
import 'package:perfection_task/ui/resources/app_images.dart';
import 'package:perfection_task/ui/resources/app_responsive.dart';
import 'package:perfection_task/ui/resources/app_styles.dart';

import '../../core/localization/localization_constants.dart';

class UserItem extends StatefulWidget {
  const UserItem({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.s(),
        backgroundImage: NetworkImage(
          widget.user.avatar ?? AppImages.profilePhotoPlaceholder,
        ),
      ),
      title: AutoSizeText(
        '${widget.user.firstName}',
        style: AppStyles.getBoldStyle(fontSize: 20.s(),color: Theme.of(context).colorScheme.onPrimaryFixed,),
      ),
      subtitle: AutoSizeText.rich(TextSpan(
          text: '${AppStrings.uid} : ',
          style: AppStyles.getBoldStyle(
            fontSize: 15.s(),
            color: Theme.of(context).colorScheme.onPrimaryFixed,
          ),
          children: [
            TextSpan(
                text: '${widget.user.id}',
                style: AppStyles.getMediumStyle(
                  fontSize: 15.s(),
                  color: Theme.of(context).colorScheme.onPrimaryFixed,
                ))
          ])),
      trailing: Icon(
        context.locale == LocalizationConstants.arabicLocale
            ? Icons.arrow_circle_left
            : Icons.arrow_circle_right,
        size: 30.s(),
        color: Theme.of(context).colorScheme.surface,
      ),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.userDetailsScreen,arguments: {
          AppKeys.currentUserKey : widget.user
        });
      },
    );
  }

  TextDirection? _selectUidDirection() {
    if(context.locale==LocalizationConstants.arabicLocale){
      return TextDirection.rtl;
    }
    return TextDirection.ltr;
  }
}
