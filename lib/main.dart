import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:otpapp/home.dart';
import 'package:otpapp/on_boarding/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otpapp/screens/home/home_screen.dart';
import 'package:otpapp/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int?isviewed;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}



// Future<void> main() async {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//   ));
//
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   isviewed = prefs.getInt('onBoard');
//   await Firebase.initializeApp();
//   WidgetsFlutterBinding.ensureInitialized();
//   var email = prefs.getString('id');
//   print(email);
//   runApp(MaterialApp(home: isviewed == 0 && email == null ? LoginScreen() :
//   OnBoard()));
//
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isviewed != 0 ? OnBoard() : Home(),
    );
  }

}


