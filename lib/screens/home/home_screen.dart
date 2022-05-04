import 'package:flutter/material.dart';

import '../../models/userBoundary.dart';


class HomeScreen extends StatelessWidget {
  final UserBoundary user;

  static var routeName='/home';
  const HomeScreen(
      this.user,
      );

  @override
  Widget build(BuildContext context) {
    return HomeScreen(user);
  }
}
