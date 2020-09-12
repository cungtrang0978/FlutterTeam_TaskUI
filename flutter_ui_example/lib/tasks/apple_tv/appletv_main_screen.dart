import 'package:flutter/material.dart';

import 'nav_screens/appletv_category_nav.dart';
import 'nav_screens/appletv_television_nav.dart';

class AppleTVMainScreen extends StatefulWidget {
  @override
  _AppleTVMainScreenState createState() => _AppleTVMainScreenState();
}

class _AppleTVMainScreenState extends State<AppleTVMainScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    AppleTVCategoryNav(),
    AppleTVTelevisionNav(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: Text(
          'AppleTV',
          style: TextStyle(color: Colors.redAccent),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black.withOpacity(0.8),
            primaryColor: Colors.blueAccent),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('122')),
            BottomNavigationBarItem(icon: Icon(Icons.tv), title: Text('122')),
            BottomNavigationBarItem(
                icon: Icon(Icons.thumb_up), title: Text('122')),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_add), title: Text('122')),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
