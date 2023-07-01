import 'package:flutter/material.dart';
//TODO: Fix this later. This is copy-paste for now.
class PostModel {
  String title;
  String imageUrl;
  String user;
  String content;

  PostModel(Map<String, dynamic> parsedJson) {
    title = parsedJson['title'];
    imageUrl = parsedJson['image'];
    user = parsedJson['user'];
    content = parsedJson['content'];
  }

  String toString() {
    return title;
  }
}