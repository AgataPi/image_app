import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AboutMe extends StatefulWidget {
  AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  var _colors = Colors.deepPurple.shade200;
  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      showAccordion: true,
      collapsedTitleBackgroundColor: _colors,
      expandedTitleBackgroundColor: _colors,
      contentBackgroundColor: Colors.deepPurple.shade50,
      title: 'About me',
      textStyle: TextStyle(fontSize: 25),
      contentChild: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 35.0,
                    color: Colors.deepPurple,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'AGATA PIĄTEK',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.place,
                    size: 35.0,
                    color: Colors.deepPurple,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'ul. Złota 52, Gliwice - Poland',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_android,
                    size: 35.0,
                    color: Colors.deepPurple,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    '+48 722 352 556',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    size: 35.0,
                    color: Colors.deepPurple,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'a.piatek100@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Image.asset(
                    'images/logo/linkedin.png',
                    scale: 1.3,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'piatek-agata',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
