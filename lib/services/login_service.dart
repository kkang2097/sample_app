import 'package:mongo_dart/mongo_dart.dart';
import 'package:http/http.dart' as http;
import 'dart:core';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// import 'package:flutter/material.dart';

//Dummy function here
bool verify_login(String id) {
  //Make API call
  return true;
}

Future<Map<String, dynamic>> get_user_check<T>(String url, String db_api_pw, String username) async {
  print("STARTING HTTP REQUEST");
  print('$url/getuser?username=$username');
  //We should send HTTP requests without headers, using headers is a bad practice.
  final res = await http.get(Uri.parse('$url/getuser').replace(queryParameters: {'username': username}));

  //Decode the response and put it as a Future, since this is an async function.
  Future<Map<String, dynamic>> body = Future(() => jsonDecode(res.body));
  
  return body;

}





//Main function to test DB connection...
Future<void> main(List<String> args) async {
  var data = await get_user_check('http://localhost:8000', 'api_pw', 'user');
  print(data);
  print("Hello");
}