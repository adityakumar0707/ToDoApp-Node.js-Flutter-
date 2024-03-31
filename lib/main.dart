import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/dashboard.dart';
import 'package:to_do_app/loginPage.dart';
import 'package:to_do_app/registration.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp( MyApp(token: prefs.getString('token'),));
}

class MyApp extends StatelessWidget {
  final token;
  const MyApp({super.key, required this.token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignInPage(),
    );
  }
}

