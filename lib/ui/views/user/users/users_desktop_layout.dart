import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UsersDesktopLayout extends StatefulWidget {
  const UsersDesktopLayout({super.key});

  @override
  UsersDesktopLayoutState createState() => UsersDesktopLayoutState();
}

class UsersDesktopLayoutState extends State<UsersDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Center(
        child: AutoSizeText('Users Desktop Layout'),
      ),
    );
  }
}