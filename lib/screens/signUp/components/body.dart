import 'package:flutter/material.dart';
import 'package:otpapp/screens/login_screen.dart';
import 'package:otpapp/screens/signUp/signup_screen.dart';
import 'package:otpapp/screens/Welcome/components/Background.dart';
import 'package:otpapp/constant.dart';
import 'package:otpapp/components/Rounded_Button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Total height and width of screen.
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.04),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                press: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                  );
                },
                color: kButtonLightColor,
                textColor: Colors.black,
              ),
            ],
          ),
        )
    );
  }
}