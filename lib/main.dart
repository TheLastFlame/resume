import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/pages/home/home.dart';
import 'package:resume/pages/home/home_portrair.dart';

void setUpSystemUIOverlay() {
  WidgetsFlutterBinding.ensureInitialized();

  // Setting SysemUIOverlay
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: false,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent));
  // Setting SystmeUIMode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

void main() {
  setUpSystemUIOverlay();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: HomePortrait(),
      debugShowCheckedModeBanner: false,
    );
  }
}
