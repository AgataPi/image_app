import 'package:flutter/material.dart';
import 'package:image_app/pages/favorites.dart';
import 'package:image_app/pages/images.dart';
import 'package:image_app/pages/profile.dart';

class MyAppExt extends StatefulWidget {
  MyAppExt({Key? key}) : super(key: key);

  @override
  State<MyAppExt> createState() => _MyAppExtState();
}

class _MyAppExtState extends State<MyAppExt> {
  int currentIndex = 0;
  String appBarTitle = '';
  static final List<Widget> _pageOptions = <Widget>[
    MyProfile(),
    Images(),
    Favorites(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      changeTitle();
    });
  }

  void changeTitle() {
    if (currentIndex == 1) {
      appBarTitle = 'Images';
    } else if (currentIndex == 2) {
      appBarTitle = "Favourites";
    } else {
      appBarTitle = 'My Profile';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(appBarTitle),
      ),
      body: Center(
        child: _pageOptions.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[200],
        items: const [
          BottomNavigationBarItem(
            label: 'My Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Images',
            icon: Icon(Icons.image),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
        ],
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: currentIndex == 2 ? Colors.red : Colors.deepPurple,
      ),
    );
  }
}
