import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sample_app/globals.dart' as globals;

class MainPage extends StatefulWidget {

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage>{
  void _onItemTapped(int number) {
    setState(() {
      //TODO: figure out this state :(
      globals.currentScreen = number;
    });
  }

  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.grey,
    body: Text("HELLO"),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'Curated',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Rec Settings',
          ),
        ],
        currentIndex: globals.currentScreen,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ) 
  );
  }
}