import 'package:portfolio/model/app.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AppWidget extends StatelessWidget {
  final App app;
  final int index;
  final double crop = 4.0;

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
              flex: 3,
              child: Container(
                  child: Card(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                    Expanded(flex: 1, child: iconImage()),
                    Expanded(
                        flex: 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                app.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    app.description,
                                    style: TextStyle(
                                      fontSize: 15,
                                      overflow: TextOverflow.clip,
                                    ),
                                  )),
                              SizedBox(height: 10),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Language: " + app.languages,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
                              SizedBox(height: 10),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: getGitHub(app.github),
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var url = app.github;
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          }),
                                  ]))),
                              playStore(),
                              seeMore(),
                            ]))
                  ])))),
          Expanded(flex: 1, child: Container())
        ]));
  }

  String getGitHub(content) {
    if (content != '') {
      return "Github";
    } else {
      return "";
    }
  }

  Widget rightColumn() {
    return Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(),
        child: Row(children: <Widget>[
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: Container(
                  child: Card(
                      color: Colors.green,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                app.name,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              )),
                                          SizedBox(height: 5),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                app.description,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  overflow: TextOverflow.clip,
                                                ),
                                              )),
                                          SizedBox(height: 10),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "Language: " + app.languages,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              )),
                                          SizedBox(height: 10),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text: getGitHub(app.github),
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            255, 6, 26, 206)),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () async {
                                                            var url =
                                                                app.github;
                                                            if (await canLaunch(
                                                                url)) {
                                                              await launch(url);
                                                            } else {
                                                              throw 'Could not launch $url';
                                                            }
                                                          }),
                                              ]))),
                                          playStoreRight(),
                                          seeMore(),
                                        ]))),
                            Expanded(flex: 1, child: iconImage())
                          ])))),
        ]));
  }

  Widget iconImage() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.all(15),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:
                    Image(fit: BoxFit.contain, image: AssetImage(app.image)))));
  }

  Widget slideImage() {
    List<String> images = [app.screenshot1, app.screenshot2, app.screenshot3];
    double heightValue = 300;
    double widthValue = 150;
    if (app.horizontal) {
      heightValue = 150;
      widthValue = 300;
    }
    return Container(
      margin: EdgeInsets.all(15),
      child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          enlargeCenterPage: false,
          height: heightValue,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 1.0,
        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  images[i],
                  width: widthValue,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget seeMore() {
    final double imageWidth = 150;
    final double imageHeight = 300;
    return ExpansionTile(
      title: Text('See more'),
      children: <Widget>[
        SizedBox(height: 10),
        slideImage(),
        SizedBox(height: 10),
        Text(app.largeDescription),
        SizedBox(height: 10),
      ],
    );
  }

  Widget playStore() {
    if (app.playstore != '') {
      return Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
              icon: Image.asset('images/google-play-badge.png'),
              iconSize: 100,
              onPressed: () async {
                var url = app.playstore;
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }));
    } else {
      return SizedBox(height: 20);
    }
  }

  Widget playStoreRight() {
    if (app.playstore != '') {
      return Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              icon: Image.asset('images/google-play-badge.png'),
              iconSize: 100,
              onPressed: () async {
                var url = app.playstore;
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }));
    } else {
      return SizedBox(height: 20);
    }
  }
}
