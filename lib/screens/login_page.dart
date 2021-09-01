import 'package:flutter/material.dart';
import 'package:flutter_crash_course/bg_image.dart';
import 'package:flutter_crash_course/screens/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter username",
                                      labelText: "Username"),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter password",
                                      labelText: "Password"),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
