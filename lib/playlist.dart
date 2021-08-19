import 'dart:ui';

import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Playlist",
              style: TextStyle(fontSize: 25.5, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
