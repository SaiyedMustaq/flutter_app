import 'dart:ui';

import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Camera",
              style: TextStyle(fontSize: 25.5, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
