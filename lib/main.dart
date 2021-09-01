import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

main() {
  runApp(MaterialApp(
    title: "My first App",
    home: Container(
      child: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.amber,
                gradient: LinearGradient(colors: [Colors.amber, Colors.pink]),
                borderRadius: BorderRadius.circular(8)),
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: Text(
              "BOX",
              style: TextStyle(color: Colors.amber, fontSize: 24),
            ),
          ),
        ));
  }
}
