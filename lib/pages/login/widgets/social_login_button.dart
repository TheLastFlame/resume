import 'package:balanced_text/balanced_text.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.borderRadius,
    required this.width,
    required this.buttonColor,
    required this.contentColor,
  });

  final String title;
  final VoidCallback onTap;
  final BorderRadius borderRadius;
  final double width;
  final Color buttonColor;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: buttonColor,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: SizedBox(
        width: width,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BalancedText(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: contentColor,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
