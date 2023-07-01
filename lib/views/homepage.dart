import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sample_app/globals.dart' as globals;

class MainPage extends StatefulWidget {

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage>{

  void _onItemTapped(int number) {
    setState() {
      //TODO: figure out this state :(
      globals.currentScreen = number;
    }
    print(number);
  }

  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.grey,
    body: Text("HELLO"),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: globals.currentScreen,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ) 
  );
  }
}