import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class PillAppBar extends StatelessWidget {
  const PillAppBar({
    super.key,
    required this.borderRadius,
    required this.profileHeight,
    required this.name,
    required this.onAvatarTap,
  });

  final String name;
  final VoidCallback onAvatarTap;

  final double borderRadius;
  final double profileHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: profileHeight,
      child: Card(
        elevation: 7,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              InkResponse(
                onTap: onAvatarTap,
                child: CircleAvatar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
