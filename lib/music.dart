import 'dart:ui';

import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Music",
              style: TextStyle(fontSize: 25.5, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
