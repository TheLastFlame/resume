import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/gen/i18n/strings.g.dart';

class EditorBottomBar extends StatelessWidget {
  const EditorBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ListView(
          padding: const EdgeInsets.all(appPadding / 2),
          scrollDirection: Axis.horizontal,
          children: [
            BottomBarCard(
              index: 0,
              text: t.profile.personal_data,
              isActive: true,
            ),
            BottomBarCard(
              index: 1,
              text: t.profile.contact_data,
              isActive: false,
            ),
            BottomBarCard(
              index: 2,
              text: 'About Me',
              isActive: false,
            ),
            BottomBarCard(
              index: 3,
              text: 'Skills',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarCard extends StatelessWidget {
  BottomBarCard(
      {super.key,
      required this.index,
      required this.text,
      this.isActive = false});

  bool isActive;
  String text;
  int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isActive ? 0 : 1,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
