import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_example/tasks/apple_tv/appletv_main_screen.dart';
import 'package:flutter_ui_example/tasks/september_7/task_september_7_screen.dart';
import 'package:flutter_ui_example/tasks/task_kiem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return appUI(context);
  }
}

Widget appUI(BuildContext context) => MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ),
  debugShowCheckedModeBanner: false,
  home: TaskSeptemberSeventhScreen(),
);


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  NewTaskState createState() => NewTaskState();
}


