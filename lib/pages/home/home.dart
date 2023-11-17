import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MorphingAppBar(
        title: Text('Text'),
        actions: [
          IconButton(
              onPressed: () {
                context.push('/profile');
              },
              icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
