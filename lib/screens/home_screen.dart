
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'package:otpapp/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);

}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //final _auth = FirebaseAuth.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HOME"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
        },
        child: Icon(Icons.logout),
      ),
    );
  }

}