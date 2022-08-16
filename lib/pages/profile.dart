import 'package:flutter/material.dart';

import 'package:image_app/pages/profile/aboutMe.dart';
import 'package:image_app/pages/profile/courses.dart';
import 'package:image_app/pages/profile/skills.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.deepPurple[100],
        child: ListView(
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  AboutMe(),
                  Courses(),
                  Skills(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
