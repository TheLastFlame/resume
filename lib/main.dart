import 'package:resume/utils.dart';
import 'package:flutter/material.dart';
import 'package:resume/navigation/router.dart';

void main() {
  setUpSystemUIOverlay();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
