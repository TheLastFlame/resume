import 'package:flutter/material.dart';
import 'package:resume/navigation/router.dart';
import 'package:go_router/go_router.dart';

BuildContext get _context => rootNavigationKey.currentContext!;

class Nav {
  static fuckGoBack() => _context.pop();
  static pushProfile() => _context.push('/profile');
  static goHome() => _context.go('/home');
  static pushEditor() => _context.push('/editor');
}
