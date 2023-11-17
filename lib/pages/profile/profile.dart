import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/pages/home/widgets/pill_appbar.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PillAppBar(
              name: "Иван Иванович",
              onAvatarTap: () => Nav.fuckGoBack(),
              borderRadius: appBorderRadius,
              profileHeight: 60,
            ),
          ),
        ],
      ),
    );
  }
}
