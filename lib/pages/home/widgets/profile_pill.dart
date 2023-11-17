import 'package:flutter/material.dart';

class ProfilePill extends StatelessWidget {
  const ProfilePill({
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
