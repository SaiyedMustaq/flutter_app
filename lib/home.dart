import 'dart:convert';
import 'dart:ui';
import 'package:flutter_app/api_method.dart';
import 'package:http/http.dart' as http;
import 'Post.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var apileve = ApiCallMethod;
  Future<Post> post;
  final appTitle = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: _HomePage(title: appTitle),
    );
  }
}

class _HomePage extends StatelessWidget {
  final String title;
  _HomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
