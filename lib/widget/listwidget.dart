import 'package:portfolio/model/backend.dart';
import 'package:portfolio/widget/appwidget.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children:
          Backend().getApps().map((item) => AppWidget(app: item)).toList(),
      //children: <CharacterWidget>[CharacterWidget(character: characters[0])],
    );
  }
}
