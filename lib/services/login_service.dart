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

Future<Map<String, dynamic>> get_user_check(String url, String username) async {
  print("STARTING HTTP REQUEST");
  print('$url/getuser?username=$username');
  //We should send HTTP requests without headers, using headers is a bad practice.
  final res = await http.get(Uri.parse('$url/getuser').replace(queryParameters: {'username': username}));

  //Decode the response and put it as a Future, since this is an async function.
  Future<Map<String, dynamic>> body = Future(() => jsonDecode(res.body));
  
  return body;

}
//Dummy function so we don't need to access the API all the time
Future<Map<String, dynamic>> fake_getuser(String url, String username) async {
  Future<Map<String, dynamic>> body = Future(() => {'_id': 'wa',
   'subs': {'dummy_sub1': 'dummy_desc', 'dummy_sub2': 'dummy_desc'}, 
   'feed': {'dummy_sub1': 'dummy_desc', 'dummy_sub2': 'dummy_desc'}, 
   'curated': {'dummy_sub1': 'dummy_desc', 'dummy_sub2': 'dummy_desc'}});

   return body;
}





//Main function to test DB connection...
Future<void> main(List<String> args) async {
  var data = await get_user_check('http://localhost:8000', 'user');
  print(data);
  print("Hello");
}