import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
}

class _Home  extends State<Home> {
  String firstName='';
  String lastName='';
  var idUser;
  var phoneUser;



  String verificationId = '';

  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: false,
        ),
        child: SafeArea(
            child: ListView(padding: const EdgeInsets.all(16), children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: CupertinoTextField(
                      placeholder: "firstName",
                      onChanged: (value) {
                        firstName = value;
                      })),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: CupertinoTextField(
                      placeholder: "lastName",
                      onChanged: (value) {
                        lastName = value;
                      })),
              FlatButton.icon(
                  onPressed: () {
                    print(firstName);
                    print(lastName);
                    //signup(firstName, lastName);
                    save(firstName,lastName);
                  },
                  icon: Icon(Icons.save),
                  label: Text("Sign UP"))
            ])));
  }


}
Future save(String firstName,String lastName) async {
  var res = await http.post(Uri.parse("'http://127.0.0.1:27017/users/signUp"),
      headers: <String, String>{
        'Context-Type': 'application/json;charSet=UTF-8'
      },
      body: <String, String>{
        'firstName': firstName,
        'lastName': lastName
      });
  print(res.body);
}