import 'package:flutter/material.dart';
import 'package:sample_app/services/login_service.dart';


class Feed extends StatefulWidget {

  @override
  _FeedState createState() => _FeedState();
}


class _FeedState extends State<Feed> {
  //Add state helper functions

  //TODO: Load Provider context instead of raw HTTP request later
  // @override
  // initState(){
  //   Future<Map<String, dynamic>> user_data = fake_getuser(url, username);
  // }

  //Return value, a widget
  @override
  Widget build(BuildContext context) {
    //TODO: Need a ListView thing here...
    return ListView(
      children: <Widget>[Text("1"), Text('2')],
    );
  }

}