import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:otpapp/home.dart';
import 'package:otpapp/models/userBoundary.dart';
//import 'package:otpapp/screens/cart/cart_screen.dart';
import 'package:otpapp/screens/complete_profile/complete_profile_screen.dart';
//import 'package:otpapp/screens/details/details_screen.dart';
import 'package:otpapp/screens/home/home_screen.dart';

import 'package:otpapp/screens/login_screen.dart';
import 'package:otpapp/screens/profile/profile_screen.dart';
import 'package:otpapp/screens/splash/splash_screen.dart';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => Home(),
  ProfileScreen.routeName: (context) => ProfileScreen(),

};