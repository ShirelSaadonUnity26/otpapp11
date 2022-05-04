import 'package:flutter/material.dart';
import 'package:otpapp/constant.dart';
import 'package:otpapp/screens/login_screen.dart';
import 'package:otpapp/size_config.dart';

// This is the best practice

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
              const Text('?האם אתה מעוניין לקחת חלק במערך הסיוע שלנו ?'),
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
                title: const Text('YES'),
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
                title: const Text('NO'),
              ),
              const SizedBox(height: 25),
              Text(_selectedGender == 'yes' ? 'ddd' : 'Hi lady!')
            ],
          )),
    );
  }

}