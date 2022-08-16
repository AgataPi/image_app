import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  var _colors = Colors.deepPurple.shade200;

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      collapsedTitleBackgroundColor: _colors,
      expandedTitleBackgroundColor: _colors,
      contentBackgroundColor: Colors.deepPurple.shade50,
      title: 'Skills',
      textStyle: TextStyle(fontSize: 25),
      contentChild: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/logo/html.png'),
                        const Text('HTML'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/logo/css.png'),
                        const Text('CSS'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/logo/javascript.png'),
                        const Text('JavaScript'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/logo/react.png'),
                        const Text('React'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/logo/git.png'),
                        const Text('GIT'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/logo/github.png'),
                        const Text('GitHub'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/logo/java.png'),
                        const Text('Java'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/logo/spring.png'),
                        const Text('Spring'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/logo/postgresql.png'),
                        const Text('PostgreSQL'),
                      ],
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
