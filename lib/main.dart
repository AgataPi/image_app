import 'package:flutter/material.dart';
import 'navigation.dart';

import 'pages/favorites.dart';
import 'pages/images.dart';
import 'pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/profile': (context) => new MyProfile(),
        '/images': (context) => new Images(),
        '/favorites': (context) => new Favorites()
      },
      debugShowCheckedModeBanner: false,
      home: MyAppExt(),
    );
  }
}
