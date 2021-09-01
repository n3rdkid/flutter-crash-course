import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/background.jpeg",
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Colors.black.withOpacity(0.5),
      colorBlendMode: BlendMode.darken,
    );
  }
}
