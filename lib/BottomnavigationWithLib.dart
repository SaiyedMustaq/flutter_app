import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'music.dart';
import 'camera.dart';
import 'contact.dart';
import 'playlist.dart';
import 'main.dart';

class BottomnavigationWithLib extends StatelessWidget {
  final String pageTitle = 'Bottomnavigation';

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
  MyBottomNavigationPage({Key key, this.title}) :super(key: key);
  final String title;
  @override
  _MyBottomnavigationPage createState() => _MyBottomnavigationPage();

}

class _MyBottomnavigationPage extends State<MyBottomNavigationPage> {


  int _currentIndex = 2;

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:return HomePage();
      case 1:return MusicPage();
      case 2:return CameraPage();
      case 3:return ContactPage();
      case 4:return PlaylistPage();
      break;

      default:
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()))
        ),
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.home, size: 20, color: Colors.blue),
            Icon(Icons.music_note, size: 20, color: Colors.blue),
            Icon(Icons.camera_alt, size: 20, color: Colors.blue),
            Icon(Icons.account_circle, size: 20, color: Colors.blue),
            Icon(Icons.exit_to_app, size: 20, color: Colors.blue),
          ],
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.fastOutSlowIn,
          backgroundColor: Colors.blue,
          color: Colors.white,
          height: 50,
          index: _currentIndex,
          onTap: (index) {
            _currentIndex = index;
            setState(() {});
          }),
    );
  }
}
