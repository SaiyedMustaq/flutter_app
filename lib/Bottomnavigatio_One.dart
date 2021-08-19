import 'package:flutter/material.dart';
import 'home.dart';
import 'music.dart';
import 'camera.dart';
import 'contact.dart';
import 'playlist.dart';
import 'main.dart';

class Bottomnavigation_One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      title: 'Bottomnavigation With Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBottomNavigationPage(title: 'Bottomnavigation With Animation'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(widget.title),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()))),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  Color backGroundColor = Colors.white;

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), Text('Home'), Colors.deepPurple),
    NavigationItem(Icon(Icons.mail), Text('Email'), Colors.amber),
    NavigationItem(Icon(Icons.music_note), Text('Music'), Colors.deepOrange),
    NavigationItem(Icon(Icons.camera_alt), Text('Camera'), Colors.pink),
    NavigationItem(Icon(Icons.library_music), Text('Playlist'), Colors.purple)
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 370),
      width: isSelected ? 125 : 50,
      height: double.maxFinite,
      padding: isSelected ? EdgeInsets.only(left: 8) : null,
      decoration: isSelected
          ? BoxDecoration(
              color: item._color,
              borderRadius: BorderRadius.all(Radius.circular(50)))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                    size: 24,
                    color: isSelected ? backGroundColor : Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: item._icon,
                ),
              ),
              isSelected
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: isSelected
                          ? DefaultTextStyle.merge(
                              style: TextStyle(color: backGroundColor),
                              child: item._title)
                          : Container())
                  : Container()
            ],
          )
        ],
      ),
    );
  }

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
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: backGroundColor,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((item) {
            var itemIndex = items.indexOf(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  callPage(itemIndex);
                });
              },
              child: _buildItem(item, selectedIndex == itemIndex),
            );
          }).toList()),
    );
  }
}

class NavigationItem {
  final Icon _icon;
  final Text _title;
  final Color _color;

  NavigationItem(this._icon, this._title, this._color);
}
