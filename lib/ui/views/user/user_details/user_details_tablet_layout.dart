import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../resources/app_styles.dart';

class UserDetailsTabletLayout extends StatelessWidget {
  const UserDetailsTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        'User Details Tablet Layout',
        style: AppStyles.getBoldStyle(),
      ),
    );
  }
}
