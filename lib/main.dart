import 'package:flutter/material.dart';
import 'package:sample_app/views/login.dart';
import 'package:sample_app/views/homepage.dart';
import 'package:sample_app/globals.dart' as globals;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/providers/counter_provider.dart';

void main() async {
  //Wait for environment variables to load
  await dotenv.load(fileName: "asset/env/.env_prod");
  //Example: How to call environment variable
  //dotenv.get('DB_API_URL', fallback:'NOT FOUND')

  //Wait for login status to be confirmed
  
  //TODO: Provider for User

  //Load app
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      //We call providers this way in other files:
      // context.watch<Counter>().count
      // Or to call a method... context.read<Counter>().decrement()
    ],
    child: MyApp(),
    ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: Add routes later!
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: globals.isLoggedIn ? MainPage():LoginDemo(),
    );
  }
}