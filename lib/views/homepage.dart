import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sample_app/views/feed.dart';
import 'package:sample_app/globals.dart' as globals;

class MainPage extends StatefulWidget {

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage>{
  void _onItemTapped(int number) {
    setState(() {
      globals.currentScreen = number;
    });
  }

  //Get conditional widget
  Widget get_conditional_screen(int index){

    //TODO: switch statement for widgets
    switch(index){
      case 0:
        return Text('feeeeed');
        break;
      case 1:
        return Text('curateddd');
        break;
      case 2:
        return Text('Rec Settingssss');
        break;
    }
    return Text('404, error lol');
  }

  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    //TODO: Change body conditionally, based on globals.currentScreen
    body: get_conditional_screen(globals.currentScreen),
    appBar: AppBar(
      //TODO: find a decent theme :(
      // backgroundColor: Grey();
    ),
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