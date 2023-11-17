import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/navigation/swipeable_page.dart';
import 'package:resume/pages/home/home.dart';
import 'package:resume/pages/profile/profile.dart';

final rootNavigationKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigationKey,
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => MaterialPage(child: Homepage()),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => SwipeablePage(child: ProfilePage()),
    ),
  ],
);
