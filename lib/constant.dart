// import 'package:flutter/material.dart';
//
// Color kblue = Color(0xFF4756DF);
// Color kwhite = Color(0xFFFFFFFF);
// Color kblack = Color(0xFF000000);
// Color kbrown300 = Color(0xFF8D6E63);
// Color kbrown = Color(0xFF795548);
// Color kgrey = Color(0xFFC0C0C0);

import 'package:flutter/material.dart';
import 'package:otpapp/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
Color kblue = Color(0xFF4756DF);
Color kwhite = Color(0xFFFFFFFF);
Color kblack = Color(0xFF000000);
Color kbrown300 = Color(0xFF8D6E63);
Color kbrown = Color(0xFF795548);
Color kgrey = Color(0xFFC0C0C0);
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

const kButtonColor = Color(0xFF237CEC);
const kButtonLightColor = Color(0x6000C0FF);
const kHintColor = Color(0xB54B4B4B);
const kTextFieldColor = Color(0x970066FF);
const kUpcomingBG = Color(0x979E9E9E);

DateTime kFirstDay = DateTime.utc(2010, 1, 1);
DateTime kLastDay = DateTime.utc(2030, 12, 31);
DateTime kFocusedDay = DateTime.now();

String apiKey = "AIzaSyAti8b7yFUYl07IeZT43YhD7paVg4EwK2I";

// not sure about this one ill check later
const String kSpace = "2021b.idan";

Color whatColor(String category) {
  switch (category) {
    case "Work Meeting":
      return Color(0xFFBF000C);
    case "Party":
      return Color(0xFFC7AC00);
    case "Call":
      return Color(0xFF00B32C);
    default:
      return kButtonColor;
  }
}

Icon whatIcon(String category) {
  switch (category) {
    case "Work Meeting":
      return Icon(
        Icons.cases_outlined,
        color: kPrimaryLightColor,
      );
    case "Party":
      return Icon(
        Icons.people_alt_outlined,
        color: kPrimaryLightColor,
      );
    case "Call":
      return Icon(
        Icons.phone_in_talk,
        color: kPrimaryLightColor,
      );
    default:
      return Icon(
        Icons.person_pin_circle_outlined,
        color: kPrimaryLightColor,
      );
  }
}

const Map<String, String> kJsonHeaders = {
  'Content-Type': 'application/json',
  'accept': 'application/json'
};