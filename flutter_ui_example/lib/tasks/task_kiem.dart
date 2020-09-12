import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_example/main.dart';

class NewTaskState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Text(
                'Memory',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[400],
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'MContact',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'L',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(50)),
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                          ),
                          Container(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nguyen Duc Long',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 10,
                              ),
                              Text('Actor'),
                              Container(
                                height: 10,
                              ),
                              Text('123Entertainment'),
                            ],
                          ),
                          Container(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.transit_enterexit),
                              Text('Edit'),
                            ],
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Help & Support',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.question_answer),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'FAQ',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
              ),
              flex: 1,
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 1,
                        color: Colors.grey[400],
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ],
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Icon(
                      Icons.home,
                      size: 50,
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 40),
            ),
          ],
        ),
      ),
    );
  }
}
