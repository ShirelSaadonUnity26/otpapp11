import 'package:flutter/material.dart';
import 'components/Body.dart';
import '../../constant.dart';

class CreateAssistantScreen extends StatefulWidget {
  const CreateAssistantScreen({Key? key}) : super(key: key);

  @override
  State<CreateAssistantScreen> createState() => _CreateAssistantScreenState();
}

class _CreateAssistantScreenState extends State<CreateAssistantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        title: const Text("השלמת פרופיל "),
        centerTitle: true,
        backgroundColor: kTextFieldColor,
      ),
    );
  }
}
