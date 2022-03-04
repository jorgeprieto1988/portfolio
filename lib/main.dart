import 'package:flutter/material.dart';
import 'package:portfolio/widget/listwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android Portfolio - Prieto Martin Jorge',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
          title: Text('Android Portfolio - Prieto Martin Jorge'),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              aboutMeBox(context),
              SizedBox(
                height: 50.0,
              ),
              ListWidget(),
            ]))));
  }

  Widget aboutMeBox(context) {
    return Align(
        alignment: Alignment.topRight,
        child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                  bottomLeft: Radius.circular(100.0)),
            ),
            constraints: BoxConstraints.expand(height: 300, width: 300),
            padding: const EdgeInsets.all(8.0),
            color: Colors.green,
            alignment: Alignment.topLeft,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('About me',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('''Hello! This is Jorge.
                  \n Welcome to my android portfolio. Here I have some projects I have done during the course of my master degree in mobile application development. There are also some other private projects I have done by myself. 
                  \n There is links to playstore and github for every project but some of the github projects are private so please, contact me in case you want to take a look.
                  jorgeappdeveloper@gmail.com''',
                      style: TextStyle(color: Colors.white))
                ])));
  }
}
