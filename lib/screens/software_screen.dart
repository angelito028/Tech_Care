import 'package:flutter/material.dart';

class SoftwareScreen extends StatelessWidget {
  const SoftwareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Bienvenido a la pantalla de Software")],
      ),
    );
  }
}
