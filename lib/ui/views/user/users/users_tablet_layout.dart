import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UsersTabletLayout extends StatefulWidget {
  const UsersTabletLayout({super.key});

  @override
  UsersTabletLayoutState createState() => UsersTabletLayoutState();
}

class UsersTabletLayoutState extends State<UsersTabletLayout> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Center(
        child: AutoSizeText('Users Tablet Layout'),
      ),
    );
  }
}
