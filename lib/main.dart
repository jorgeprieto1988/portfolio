import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prieto Jorge Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "My",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                    fontSize: 50.0,
                  ),
                  children: [
                    TextSpan(
                      text: "Portfolio",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.red,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
              Text("by Jorge Prieto Martin", style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 50.0,
              ),
            ])));
  }
}
