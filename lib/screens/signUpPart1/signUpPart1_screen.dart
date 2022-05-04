import 'package:flutter/material.dart';
import 'package:otpapp/delete_widget.dart';
import 'package:otpapp/home.dart';
import 'package:otpapp/screens/createAssistant/createAssistant_screen.dart';

import '../../components/Rounded_Button.dart';

class SignUpPart1Screen extends StatefulWidget {
  const SignUpPart1Screen({Key? key}) : super(key: key);

  @override
  _SignUpPart1Screen createState() => _SignUpPart1Screen();
}

class _SignUpPart1Screen extends State<SignUpPart1Screen> {
  // The inital group value
  String _selectedGender = 'yes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'UNITY26',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('?האם אתה מעוניין לקחת חלק ממערך הסיוע שלנו'),
              ListTile(
                leading: Radio<String>(
                  value: 'yes',

                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('כן'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'no',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('לא'),
              ),

              const SizedBox(height: 25),
              RoundedButton(
                  text: "אשר",

                  press: () async {



                          if (_selectedGender== 'yes') {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CreateAssistantScreen() ;
                            },
                          ),
                        );
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

                  }),

            ])));
  }
              //Text(_selectedGender == 'yes' ? CreateAssistantScreen() :Home()            ], RoundedButton(
}