import 'package:flutter/material.dart';
import 'home.dart';
import 'music.dart';
import 'camera.dart';
import 'contact.dart';
import 'playlist.dart';
import 'main.dart';

class Bottomnavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      title: 'Bottomnavigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBottomNavigationPage(title: 'Bottomnavigation'),
    );
  }
}

class MyBottomNavigationPage extends StatefulWidget {
  MyBottomNavigationPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyBottomnavigationPage createState() => _MyBottomnavigationPage();
}

class _MyBottomnavigationPage extends State<MyBottomNavigationPage> {
  int _currentIndex = 0;

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return MusicPage();
      case 2:
        return CameraPage();
      case 3:
        return ContactPage();
      case 4:
        return PlaylistPage();
        break;

      default:
    }
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()))),
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        elevation: 0.8,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,color: Colors.blue),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail,color: Colors.blue),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.music_note,color: Colors.blue),
            title: new Text('Music'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.camera_alt,color: Colors.blue),
            title: new Text('Camera'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_music,color: Colors.blue),
            title: new Text('Playlist'),
          )
        ],
      ),
    );
  }
}
