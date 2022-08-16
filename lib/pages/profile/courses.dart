import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Courses extends StatefulWidget {
  Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      collapsedTitleBackgroundColor: Colors.deepPurple.shade200,
      expandedTitleBackgroundColor: Colors.deepPurple.shade200,
      contentBackgroundColor: Colors.deepPurple.shade50,
      title: 'Courses',
      textStyle: TextStyle(fontSize: 25),
      contentChild: Container(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "Accenture Java Academy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 5.0)),
                          Text(
                            'Software Development Academy',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child:
                            Text('05.2022', textDirection: TextDirection.rtl),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "React.js programming",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 8)),
                          Text(
                            textAlign: TextAlign.center,
                            'websamuraj.pl',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('2021', textDirection: TextDirection.rtl),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "JavaScript programming",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 8)),
                          Text(
                            'websamuraj.pl',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('2021', textDirection: TextDirection.rtl),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "Advanced front-end developer in 15 days",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 8.0)),
                          Text(
                            'websamuraj.pl',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('2021', textDirection: TextDirection.rtl),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "Web developer from scratch in 15 days",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 8.0)),
                          Text(
                            'websamuraj.pl',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('2020', textDirection: TextDirection.rtl),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
