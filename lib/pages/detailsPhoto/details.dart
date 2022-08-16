import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';

class DetailsPage extends StatefulWidget {
  var detailsImage;
  DetailsPage({this.detailsImage});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Details'),
      ),
      body: Container(
        color: Colors.deepPurple[100],
        child: Center(
          child: ListView(
            children: [
              GFCard(
                color: Colors.deepPurple.shade50,
                boxFit: BoxFit.cover,
                showImage: true,
                image: Image.network(
                  widget.detailsImage.urls.toString(),
                ),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Creation date: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.detailsImage.createdAt.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Username: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.detailsImage.username.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Author: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.detailsImage.userLastName == null
                                ? widget.detailsImage.userFirstName.toString()
                                : widget.detailsImage.userFirstName.toString() +
                                    ' ' +
                                    widget.detailsImage.userLastName.toString(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Text(
                            'Description:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 8)),
                          Text(
                            widget.detailsImage.description == null
                                ? 'No description'
                                : widget.detailsImage.description.toString(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
