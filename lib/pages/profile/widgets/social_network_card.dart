import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class SocialNetworksCard extends StatelessWidget {
  const SocialNetworksCard(
      {super.key, required this.text, required this.icon, this.onTap});

  final String text;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        elevation: 2,
        child: InkWell(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: appPadding),
                  child: Text(text),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
