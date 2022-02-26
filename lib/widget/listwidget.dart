import 'package:portfolio/model/backend.dart';
import 'package:portfolio/widget/appwidget.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      children: Backend()
          .getApps()
          .asMap()
          .map((i, item) => MapEntry(i, AppWidget(app: item, index: i)))
          .values
          .toList(),
      //children: <CharacterWidget>[CharacterWidget(character: characters[0])],
    );
  }
}
