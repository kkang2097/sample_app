import 'package:mongo_dart/mongo_dart.dart';
import 'package:http/http.dart' as http;
import 'dart:core';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// import 'package:flutter/material.dart';

bool verify_login(String id) {
  //Make API call
  return true;
}

//TODO: We need to make this a POST request instead of a GET request
Future<bool> get_user_check(String url, String db_api_pw, String username) async {
  try{
      print("STARTING HTTP REQUEST");
      final res = await http.get(Uri.parse(url + '/getuser'),
      headers: {'fake_auth': db_api_pw});
      print("HTTP REQUEST FINISHED");
      return new Future<bool>.value(true);
  }
  on HttpException catch (error) {
    print('Error caught');
    return new Future<bool>.value(false);
  }
}


//Main function to test DB connection...


Future<void> main(List<String> args) async {
  var data = await get_user_check('http://localhost:8000', 'api_pw', 'user');
  print(data);
  print("Hello");
}