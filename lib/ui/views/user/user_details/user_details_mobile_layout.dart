import 'package:flutter/material.dart';

import '../../../../domains/entities/user.dart';
import '../../../resources/app_images.dart';
import '../../../widgets/draggable_product_details_sheet.dart';

class UserDetailsMobileLayout extends StatelessWidget {
  const UserDetailsMobileLayout({super.key, required this.user});

  final User user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            // Product Image
            FractionallySizedBox(
              heightFactor: 0.6,
              widthFactor: 1,
              child: Image.network(
                user.avatar ?? AppImages.notImageFoundPlaceholder,
                fit: BoxFit.cover,
              ),
            ),
            // Draggable Scrollable Details Sheet
            DraggableProductDetailsSheet(user: user),
          ],
        ),
      ),
    );
  }
}
