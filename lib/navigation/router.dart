import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/pages/editor/editor.dart';
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
      pageBuilder: (context, state) => const CupertinoPage(child: Homepage()),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) =>
          const CupertinoPage(child: ProfilePage()),
    ),
    GoRoute(
      path: '/editor',
      pageBuilder: (context, state) => const CupertinoPage(child: EditorPage()),
    ),
  ],
);
