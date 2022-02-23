import 'package:portfolio/model/app.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final App app;
  final int index;

  AppWidget({Key? key, required this.app, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index.isEven) {
      return leftColumn();
    } else {
      return rightColumn();
    }
  }

  Widget leftColumn() {
    return Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(),
        child: Row(children: <Widget>[
          Expanded(
              child: Card(
                  child: Row(children: <Widget>[
            Container(
                margin: const EdgeInsets.all(15),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.topCenter,
                        width: 150,
                        height: 150,
                        image: AssetImage(app.image)))),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    app.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: -1,
                    ),
                  ),
                  Text(
                    app.languages,
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: -1,
                    ),
                  ),
                ])
          ]))),
        ]));
  }

  Widget rightColumn() {
    return Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(),
        child:
            Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
          Expanded(
              child: Card(
                  color: Color.fromARGB(255, 51, 150, 59),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          app.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: -1,
                          ),
                        ),
                        Text(
                          app.languages,
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: -1,
                          ),
                        ),
                      ]))),
        ]));
  }
}
