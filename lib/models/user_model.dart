import 'package:flutter/material.dart';

//TODO: Fix this later. This is copy-paste for now.
class UserModel {
  String id;
  Map<String, dynamic> subs;
  Map<String, dynamic> feed;
  Map<String, dynamic> curated;

  UserModel(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    subs = parsedJson['subs'];
    feed = parsedJson['feed'];
    curated = parsedJson['curated'];
  }

  String toString() {
    return id;
  }
}