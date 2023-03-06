import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
          child: Text(
        "Error Page",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
