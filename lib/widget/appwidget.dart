import 'package:portfolio/model/app.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final App app;

  AppWidget({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(),
        child: Row(children: <Widget>[
          SizedBox(width: 20),
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Text(
                  app.description,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  app.languages,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: -1,
                  ),
                ),
                Text(
                  app.name,
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: -1,
                  ),
                ),
                Divider(
                  height: 5,
                  thickness: 1,
                ),
              ])),
        ]));
  }
}
