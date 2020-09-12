import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_example/main.dart';

class Date_1 extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Find Your',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'Inspiration',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                            padding: EdgeInsets.all(10),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search you\'re looking for',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey[200]),
                      margin: EdgeInsets.all(20),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Promo Today',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          promoCard(
                            backgroundColor: Colors.orange,
                            label: 'The Fox',
                              aspectRatio: 3 / 4,
                              height: 240,
                              url:
                                  'https://d3fa68hw0m2vcc.cloudfront.net/ada/119604787.jpeg'),
                          promoCard(
                            backgroundColor: Colors.greenAccent,
                            label: 'One For All',
                              aspectRatio: 3 / 4,
                              height: 240,
                              url:
                                  'https://i.pinimg.com/originals/bc/b6/3c/bcb63c671a2119e201f786bb0c2ed95e.png'),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Container(
                        child: promoCard(
                          backgroundColor: Colors.yellow,
                            aspectRatio: 5 / 3,
                            height: 220,
                            label: 'The Seven Guides',
                            url:
                                'https://static.fptplay.net/static/img/share/video/25_09_2019/nanatsu-no-taizai-kamigami-no-gekirin-225-09-2019_16g25-14.jpg'),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(
      {double aspectRatio, String url, double height, String label, Color backgroundColor}) {
    return Container(
      height: height,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange[100],
            image: DecorationImage(
              image: Image.network(
                url,
                fit: BoxFit.cover,
              ).image,
            ),
          ),
          child: label == null
              ? null
              : Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    label,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
            decoration: BoxDecoration(
              color: backgroundColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15)
            ),
                ),
        ),
      ),
    );
  }
}
