import 'package:flutter/material.dart';
import 'Calculater.dart';
import 'BottomnavigationWithLib.dart';
import 'Bottomnavigation.dart';
import 'Bottomnavigatio_One.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  int _currentIndex = 0;

  MyHomePage({Key key, this.title}) : super(key: key);

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      /*case 0:return HomePage();
      case 1:return MusicPage();
      case 2:return CameraPage();
      case 3:return ContactPage();
      case 4:return PlaylistPage();
      break;

      default:*/
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: callPage(_currentIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Calculator'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalculaterPage()));
              },
            ),
            ListTile(
              title: Text('Botttom Navigation With Lib'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomnavigationWithLib()));
              },
            ),
            ListTile(
              title: Text('Botttom Navigation'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Bottomnavigation()));
              },
            ),
            ListTile(
              title: Text('Botttom Navigation With Animation'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Bottomnavigation_One()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
