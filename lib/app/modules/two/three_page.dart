import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Center(
        child: RaisedButton(
          child: Text("to back"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
