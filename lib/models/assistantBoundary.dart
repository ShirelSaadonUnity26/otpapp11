


import 'dart:ffi';

import 'package:flutter/cupertino.dart';
enum Types {
  MEDICAL,ANIMALS,CARS,CRAMINALS,ALL,SAVE_LIVES
}
class assistantBoundary {
  String professional;

  //Image license;
  bool active;
  bool isProfessionalCertificate;
  bool isEssentialInstrumentation;
  String descriptionInstrumentation;
  List<Types> types;

  //Location location;
  // Map<String, dynamic> itemAttributes;


  assistantBoundary(this.professional, this.active,
      this.isProfessionalCertificate, this.isEssentialInstrumentation,
      this.descriptionInstrumentation, this.types);

  assistantBoundary.fromJson(Map<String, dynamic> json)
      : professional=json['professional'],
        isProfessionalCertificate = json['isProfessionalCertificate'],
        isEssentialInstrumentation = json['isEssentialInstrumentation'],
        active = json['active'],
        descriptionInstrumentation = json['descriptionInstrumentation'],
        types=json['types']

/*
  UserBoundary.fromJson(Map<String, dynamic> json)
      : userId = UserId.fromJson(jsonDecode(json['userId'])),
        role = json['role'],
        username = json['username'],
        avatar = json['avatar'];
  Map<String, dynamic> toJson() => {
  'userId' : userId.toJson(),
  'role' : role,
  'username' : username,
  'avatar' : avatar;
 */


}