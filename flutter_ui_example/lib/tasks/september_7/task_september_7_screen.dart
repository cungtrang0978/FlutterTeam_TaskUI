import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_ui_example/tasks/september_7/edit_profile_screen.dart';

class TaskSeptemberSeventhScreen extends StatefulWidget {
  @override
  _TaskSeptemberSeventhScreenState createState() =>
      _TaskSeptemberSeventhScreenState();
}

class _TaskSeptemberSeventhScreenState
    extends State<TaskSeptemberSeventhScreen> {
  @override
  Widget build(BuildContext context) {
    final Size logicalSize = MediaQuery.of(context).size;
    final double _width = logicalSize.width;
    final double _height = logicalSize.height;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()));
            },
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            children: [
              appbarCustom(_width, _height),
              Positioned(
                bottom: 25,
                right: 50,
                child: avatar(),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                itemInformation(
                    iconData: Icons.home,
                    title: 'School',
                    name: 'The HCMUE School',
                    color: Colors.blue),
                itemInformation(
                    iconData: Icons.person_outline,
                    title: 'Nick Name',
                    name: 'cungtrang',
                    color: Colors.yellow),
                itemInformation(
                    iconData: Icons.contact_phone,
                    title: 'Emergency Contact',
                    name: 'Goi cap cuu di',
                    color: Colors.pinkAccent),
                itemInformation(
                    iconData: Icons.phone,
                    title: 'Emergency Number',
                    name: '0123456789',
                    color: Colors.greenAccent),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey[400],
        currentIndex: 2,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text('Calendar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), title: Text('Notebook')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Person')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
    );
  }

  Widget appbarCustom(double _width, double _height) {
    return Container(
      width: _width,
      height: _height * 1 / 3,
      child: CustomPaint(
        painter: PathPainter(),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Van Thang',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1)),
                Text(
                  'vanthang@gmail.com',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      height: 1,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget avatar({String assetImage}) => Material(
        color: Colors.white.withOpacity(0.3),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/images/apple_tv/spiderman.jpg'),
          ),
        ),
        borderRadius: BorderRadius.circular(150),
      );

  Widget itemInformation({
    @required IconData iconData,
    @required String title,
    @required String name,
    @required Color color,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Material(
              elevation: 4,
              child: CircleAvatar(
                foregroundColor: color,
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(iconData),
              ),
              borderRadius: BorderRadius.circular(150),
              shadowColor: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            )
          ],
        ),
      );
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var gradient = LinearGradient(colors: [
      Colors.blue,
      Colors.lightBlue,
      Colors.lightBlue[300],
      Colors.greenAccent[200]
    ]);

    Paint paint = Paint()
      ..shader = gradient.createShader(Rect.fromLTWH(0, 100, 500, 0))
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.lineTo(0, size.height * 3 / 4);
    path.conicTo(size.width / 8, size.height, size.width, size.height / 2, 4);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
