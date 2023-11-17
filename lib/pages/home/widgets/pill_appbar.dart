import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class PillAppBar extends StatelessWidget {
  const PillAppBar({
    super.key,
    required this.borderRadius,
    required this.profileHeight,
    required this.name,
    required this.onAvatarTap,
    this.centerTitle = false,
  });

  final String name;
  final VoidCallback onAvatarTap;

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
        elevation: 7,
        child: MorphingAppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).textTheme.titleMedium?.color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cardBorderRadius)),
          title: Text(name),
          actions: [
            Padding(
              padding: const EdgeInsets.all(appPadding),
              child: InkResponse(
                radius: 25,
                onTap: onAvatarTap,
                child: const CircleAvatar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
