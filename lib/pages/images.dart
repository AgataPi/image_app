import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:favorite_button/favorite_button.dart';

import '../model/imageModel.dart';
import 'detailsPhoto/details.dart';

class FavoriteImage {
  static var favoriteImageList = [];
}

class Images extends StatefulWidget {
  Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  var _icon = Icons.favorite_border;
  var favorite = FavoriteImage.favoriteImageList;

  @override
  void initState() {
    super.initState();
    getImageData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple[100],
        child: FutureBuilder(
          future: getImageData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: GFLoader(
                    type: GFLoaderType.circle,
                    loaderColorOne: Colors.deepPurple.shade200,
                    loaderColorTwo: Colors.deepPurple.shade300,
                    loaderColorThree: Colors.deepPurple.shade400,
                  ),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
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
                        Image.network(snapshot.data[index].urls),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FavoriteButton(
                              isFavorite: false,
                              valueChanged: (_isFavorite) {
                                print('Is Favorite $_isFavorite)');
                                if (favorite
                                    .contains(snapshot.data[index].urls)) {
                                  favorite.remove(snapshot.data[index].urls);
                                } else {
                                  favorite.add(snapshot.data[index].urls);
                                }
                                print(favorite);
                              },
                            ),
                            GFIconButton(
                              size: GFSize.MEDIUM,
                              color: GFColors.TRANSPARENT,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: GFColors.DARK,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => new DetailsPage(
                                      detailsImage: snapshot.data[index],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

 // GFIconButton(
                            //   size: GFSize.LARGE,
                            //   color: GFColors.TRANSPARENT,
                            //   icon: Icon(
                            //     _icon,
                            //     color: Colors.red,
                            //   ),
                            //   onPressed: () {
                            //     setState(() {
                            //       _icon = _icon == Icons.favorite_border
                            //           ? Icons.favorite
                            //           : Icons.favorite_border;
                            //     });
                            //     if (favorite
                            //         .contains(snapshot.data[index].urls)) {
                            //       favorite.remove(snapshot.data[index].urls);
                            //     } else {
                            //       favorite.add(snapshot.data[index].urls);
                            //     }
                            //     print(favorite);
                            //   },
                            // ),