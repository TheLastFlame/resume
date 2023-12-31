import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class PillAppBar extends StatelessWidget {
  const PillAppBar({
    super.key,
    required this.borderRadius,
    required this.profileHeight,
    required this.name,
    this.actions = const [],
    this.centerTitle = false,
  });

  final String name;
  final List<Widget> actions;

  final double borderRadius;
  final double profileHeight;

  final bool centerTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: profileHeight,
      child: Card(
        borderOnForeground: false,
        elevation: 4,
        child: MorphingAppBar(
          elevation: 0,
          primary: false,
          centerTitle: centerTitle,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).textTheme.titleMedium?.color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cardBorderRadius)),
          title: Text(name),
          actions: actions,
        ),
      ),
    );
  }
}
