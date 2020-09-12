import 'package:flutter/material.dart';
import 'package:flutter_ui_example/main.dart';

class _MyHomePageState extends State<MyHomePage> {
  Color enableColor = Colors.blue[400];
  Color disableColor = Colors.grey[500];
  var color1;

  var color2;

  var color3;

  var color4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    color1 = disableColor;
    color2 = disableColor;
    color3 = disableColor;
    color4 = disableColor;
  }

  void setColor(int index) {
    setState(() {
      color1 = disableColor;
      color2 = disableColor;
      color3 = disableColor;
      color4 = disableColor;
      if (index == 1) {
        color1 = enableColor;
      } else if (index == 2) {
        color2 = enableColor;
      } else if (index == 3) {
        color3 = enableColor;
      } else {
        color4 = enableColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;

//    print(window.physicalSize.height);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose any Service\nYou need!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(30),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                item(
                    iconData: Icons.directions_car,
                    title: 'Car Rental',
                    colorImage: color1,
                    index: 1),
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                item(
                    iconData: Icons.local_car_wash,
                    title: 'Buy & Sell',
                    colorImage: color2,
                    index: 2),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                item(
                    iconData: Icons.settings_applications,
                    title: 'Repair',
                    colorImage: color3,
                    index: 3),
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                item(
                    iconData: Icons.access_alarm,
                    title: 'Accessories',
                    colorImage: color4,
                    index: 4),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
            ),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(150, 15, 150, 15),
              color: HexColor.fromHex("262bf6"),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 14),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget item(
      {@required IconData iconData,
        @required String title,
        @required Color colorImage,
        @required index}) =>
      GestureDetector(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey[400]),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  iconData,
                  size: 80,
                  color: colorImage,
                ),
                Text(
                  title,
                  style: TextStyle(color: colorImage),
                )
              ],
            ),
          ),
          onTap: () {
            setColor(index);
          });
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
