import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MorphingAppBar(
        title: Text('test'),
      ),
      body: Placeholder(),
    );
  }
}
