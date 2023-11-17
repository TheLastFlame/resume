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
        borderOnForeground: false,
        elevation: 7,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        child: MorphingAppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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


// Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 name,
//                 style: Theme.of(context).textTheme.titleLarge,
//               ),
//               InkResponse(
//                 onTap: onAvatarTap,
//                 child: CircleAvatar(),
//               ),
//             ],
//           ),