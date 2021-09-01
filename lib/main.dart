import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crash_course/screens/homepage.dart';
import 'package:flutter_crash_course/screens/login_page.dart';

main() {
  runApp(MaterialApp(
      title: "My first App",
      home: Container(
        child: LoginPage(),
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
      theme: ThemeData(primarySwatch: Colors.amber)));
}
