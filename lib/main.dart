import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      _image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 75,
              backgroundImage: _image != null ? FileImage(_image!) : AssetImage('image/hari.jpeg') as ImageProvider<Object>?,
            ),
            Text(
              'HARIPRASATH',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.bold,
                letterSpacing: 0.9,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ASSOCIATE SOFTWARE DEVELOPER',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 13,
                fontFamily: 'ChakraPetch',
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(
              height: 20,
              width: 370,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              color: Colors.white24,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white70,
                ),
                title: Text(
                  '+91 6379057902',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white24,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white70,
                ),
                title: Text(
                  'muralihariprasath@gmail.com',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: getImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[600], // Background color
                ),
                child: Text(
                  'CLICK TO CHANGE PROFILE PHOTO',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
