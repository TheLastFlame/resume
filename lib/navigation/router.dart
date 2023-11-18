import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/navigation/swipeable_page.dart';
import 'package:resume/pages/home/home.dart';
import 'package:resume/pages/login/login_portrait.dart';
import 'package:resume/pages/profile/profile.dart';

final rootNavigationKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigationKey,
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: "/login",
      pageBuilder: (context, state) => MaterialPage(child: LoginPortrait()),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => const NoTransitionPage(child: Homepage()),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => const SwipeablePage(child: ProfilePage()),
    ),
  ],
);
