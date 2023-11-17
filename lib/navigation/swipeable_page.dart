import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class SwipeablePage extends Page {
  const SwipeablePage({required this.child});

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return SwipeablePageRoute(builder: (context) => child, settings: this);
  }
}
