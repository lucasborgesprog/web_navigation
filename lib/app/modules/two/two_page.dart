import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: RaisedButton(
          child: Text("to three"),
          onPressed: () {
            Navigator.of(context).pushNamed("/three");
          },
        ),
      ),
    );
  }
}
