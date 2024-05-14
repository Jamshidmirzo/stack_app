import 'package:flutter/material.dart';
import 'package:stack_app/homepage.dart';

void main() {
  runApp(Stacks());
}

class Stacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
