import 'package:flutter/material.dart';


class Feed extends StatefulWidget {

  @override
  _FeedState createState() => _FeedState();
}


class _FeedState extends State<Feed> {
  //Add state helper functions
  int incrementor = 0;
  void state_temp(){
    incrementor++;
  }

  //Return value, a widget
  @override
  Widget build(BuildContext context) {
    //TODO: Need a ListView thing here...
    return Text('Feeeed');
  }

}