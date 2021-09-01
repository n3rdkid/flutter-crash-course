import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crash_course/screens/homepage.dart';

main() {
  runApp(MaterialApp(
      title: "My first App",
      home: Container(
        child: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.amber)));
}
