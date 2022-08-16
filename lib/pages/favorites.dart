import 'package:flutter/material.dart';

import 'detailsPhoto/details.dart';
import 'images.dart';

class Favorites extends StatefulWidget {
  Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  var imageList = FavoriteImage.favoriteImageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple[100],
        child: ListView.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.deepPurple[50],
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.network(
                      imageList[index].toString(),
                      fit: BoxFit.fill,
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => DetailsPage(
                        //         detailsImage: imageList[index]),
                        //   ),
                        // );
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

// Scaffold(
//       appBar: null,
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.deepPurple[100],
//         child: ListView.builder(
//           itemCount: imageList.toString().length,
//           itemBuilder: (context, index) {
//             if (imageList.toString().isEmpty) {
//               Container();
//             }
//             return Card(
//               color: Colors.deepPurple[50],
//               semanticContainer: true,
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               elevation: 5,
//               margin: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   Image.network(
//                     imageList[index].toString(),
//                     fit: BoxFit.fill,
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.arrow_forward),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
