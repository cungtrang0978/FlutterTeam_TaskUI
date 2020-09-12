import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _schoolController;
  TextEditingController _emailController;
  TextEditingController _nameController;
  TextEditingController _nicknameController;
  TextEditingController _phoneController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _schoolController = TextEditingController(text: 'The Lawrenceville School');
    _emailController = TextEditingController(text: 'vanthang@gmail.com');
    _nameController = TextEditingController(text: 'Văn Thắng');
    _nicknameController = TextEditingController(text: 'cungtrang');
    _phoneController = TextEditingController(text: '0326566821');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 10,
        brightness: Brightness.light,
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 16, color:Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        alignment: Alignment.center,
        child: Column(
          children: [
            avatarPicker(),
            SizedBox(
              height: 40,
            ),
            textFieldInfo(
                label: 'School',
                controller: _schoolController,
                isDisable: true),
            SizedBox(
              height: 10,
            ),
            textFieldInfo(
                label: 'Email Address',
                controller: _emailController,
                isDisable: true),
            SizedBox(
              height: 10,
            ),
            textFieldInfo(label: 'Name', controller: _nameController),
            SizedBox(
              height: 10,
            ),
            textFieldInfo(label: 'Nick Name', controller: _nicknameController),
            SizedBox(
              height: 10,
            ),
            textFieldInfo(
                label: 'Emergency Contact',
                controller: _phoneController,
                suffixIcon: Icon(Icons.contact_phone)),
            SizedBox(
              height: 50,
            ),
            updateButton(),
          ],
        ),
      ),
    );
  }

  TextField textFieldInfo(
          {@required String label,
          @required TextEditingController controller,
          bool isDisable = false,
          Widget suffixIcon}) =>
      TextField(
        decoration: InputDecoration(
            labelText: 'Nick Name',
            labelStyle: TextStyle(color: isDisable ? Colors.grey : Colors.blue),
            disabledBorder: InputBorder.none,
            suffixIcon: suffixIcon ?? null),
        controller: controller,
        enabled: !isDisable,
      );

  CircleAvatar avatarPicker() {
    return CircleAvatar(
      radius: 70,
      backgroundImage: AssetImage('assets/images/apple_tv/spiderman.jpg'),
      child: Container(
        alignment: Alignment.bottomRight,
        child: Container(
          child: IconButton(
            color: Colors.white,
            icon: Icon(
              Icons.photo_camera,
            ),
            onPressed: () {},
          ),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(200),
            boxShadow: [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(1.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget updateButton() => RaisedButton(
        color: Colors.lightBlue[400],
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Text(
            'UPDATE PROFILE',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          alignment: Alignment.center,
          width: 500,
        ),
      );
}
