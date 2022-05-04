import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:otpapp/API/Http_Caller.dart';

import 'package:flutter/material.dart';

import 'package:otpapp/screens/Welcome/components/Background.dart';
import 'package:otpapp/components/Rounded_Button.dart';
import 'package:otpapp/screens/login_screen.dart';
import 'package:otpapp/screens/profile/profile_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../signUpPart1/components/body.dart';
import '../../signUpPart1/signUpPart1_screen.dart';
import 'Text_Field_Container.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  String? userId;
  String? phone;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                height: size.height / 2.5,
                width: 300,
                child: Background(child: Container()),
              ),
              RoundedInputField(
                controller: firstNameController,
                hintText: "שם פרטי",
                labelText: "firstName",
                onChanged: (value) {},
              ),
              RoundedInputField(
                controller: lastNameController,
                hintText: "שם משפחה",
                labelText: "lastName",
                onChanged: (value) {},
              ),

              RoundedButton(
                  text: "SIGN UP",

                  press: () async {
                    someMethod();
                    createNewUser(userId!, phone!, firstNameController.text,
                        lastNameController.text
                        , (user) {
                          if (userId == null) {
                            Alert(
                                context: context,
                                type: AlertType.error,
                                title: "Could not sign up",
                                desc: "Try Again")
                                .show();
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const SignUpPart1Screen() ;
                                },
                              ),
                            );
                          }
                        });
                  }),
              SizedBox(height: size.height * 0.005),
            ])));
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  someMethod() async {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user != null) {
        userId = user.uid.toString();
        phone = user.phoneNumber.toString();
        print(userId);

      }
    });
  }
}
