import 'package:firebase_auth/firebase_auth.dart';
import 'package:otpapp/screens/signUp/signup_screen.dart';

import '../screens/signUp/components/SignUpBody.dart';

class UserBoundary {
  String userId;
  String phone;
  String firstName;
  String lastName;

  //Set<EventItem> events = {};

  UserBoundary(this.userId, this.phone, this.firstName, this.lastName);

  UserBoundary.fromJson(Map<String, dynamic> json)
      : userId = json['_id'],
        phone = json['phone'],
        firstName = json['firstName'],
        lastName = json['lastName'];

  Map<String, dynamic> toJson() => {
    '_id': userId,
    'phone': phone,
    'firstName': firstName,
    'lastName': lastName
  };








}

