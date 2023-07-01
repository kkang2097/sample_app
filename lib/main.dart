import 'package:flutter/material.dart';
import 'package:sample_app/views/login.dart';
import 'package:sample_app/env.dart';
import 'package:sample_app/globals.dart' as globals;

void main() async {
  //Wait for environment variables to load
  await Env.init();

  //Load app
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: globals.isLoggedIn ? Text('Hello'):LoginDemo(),
    );
  }
}