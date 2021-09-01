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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.green,
              )
            ])));
  }
}
