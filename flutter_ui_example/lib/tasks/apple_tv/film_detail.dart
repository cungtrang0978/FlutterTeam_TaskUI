import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmDetailScreen extends StatefulWidget {
  @override
  _FilmDetailScreenState createState() => _FilmDetailScreenState();
}

class _FilmDetailScreenState extends State<FilmDetailScreen> {
  Color _colorLike;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _colorLike = Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.8),
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              height: 550,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/apple_tv/avenger.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              right: 20,
              top: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                  icon: Icon(
                    Icons.thumb_up,
                    color: _colorLike,
                  ),
                  onPressed: () {
                    setState(() {
                      _colorLike = _colorLike == Colors.pinkAccent? Colors.grey : Colors.pinkAccent;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 15,
              right: 15,
              child: detailMovie(),
            ),
            Positioned(
              bottom: 70,
              child: filmsListView(width),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailMovie() {
    return Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              margin: EdgeInsets.only(bottom: 10),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,

                shadowColor: Colors.black,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    'IMDb',
                                  ),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '8.6',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Text(
                                    'PG-16',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Colors.white),
                                  ),
                                  padding: EdgeInsets.all(2),
                                ),
                              ],
                            ),
                            Text(
                              'Avengers: Endgame',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Avengers: End',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              'Avengers: E',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.2)),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'More Movies',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(''),
                      ),
                      watchNowButton(),
                    ],
                  ),
                ),
              ),
            );
  }

  Widget watchNowButton() {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pinkAccent, Colors.purpleAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Container(
            constraints: BoxConstraints(maxWidth: 600.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Watch now",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget filmsListView(double width) {
    return Container(
      height: 120,
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 35,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/spiderman.jpg'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/hero.png'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/alita.jpg'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/spiderman.jpg'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/hero.png'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/alita.jpg'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/spiderman.jpg'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/hero.png'),
          Container(
            width: 15,
            color: Colors.transparent,
          ),
          movie('assets/images/apple_tv/alita.jpg'),
          Container(
            width: 35,
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget movie(String assetImage) => Container(
        width: 100.0,
        height: 40,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(assetImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
        ),
      );
}
