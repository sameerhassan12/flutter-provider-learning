// ignore: file_names
import 'dart:convert';
import 'dart:developer';

import 'package:counter_example/models/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Authservice {
  Future<dynamic> getPosts() async {
    dynamic result;
    Dio dio = Dio();

    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts/2");
    if (kDebugMode) {
      print("this is response ${response.toString()}");
    }
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      print("eroooooooooooooooooooor");
    }
  }
}
