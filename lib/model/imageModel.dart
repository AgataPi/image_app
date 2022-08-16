import 'dart:convert';

import 'package:http/http.dart' as http;

class Photo {
  String? id;
  String? createdAt;
  String? urls;
  String? username;
  String? userFirstName;
  String? userLastName;
  String? description;

  Photo({
    this.id,
    this.createdAt,
    this.urls,
    this.username,
    this.userFirstName,
    this.userLastName,
    this.description,
  });
}

Future<List<Photo>> getImageData() async {
  var response = await http.get(Uri.parse(
      'https://api.unsplash.com/photos/?client_id=jbQ2m-Ep9OFqkWG6jXA7DbASzPW8XArsG683qoMyztA'));
  var jsonData = jsonDecode(response.body);
  List<Photo> photos = [];

  for (var u in jsonData) {
    Photo photo = Photo(
      id: u['id'],
      createdAt: u['created_at'],
      urls: u['urls']['small'],
      username: u['user']['username'],
      userFirstName: u['user']['first_name'],
      userLastName: u['user']['last_name'],
      description: u['description'],
    );
    photos.add(photo);
  }
  return photos;
}
