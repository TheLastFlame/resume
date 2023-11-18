import 'package:resume/i18n/strings.g.dart';
import 'package:resume/utils.dart';
import 'package:flutter/material.dart';
import 'package:resume/navigation/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setUpSystemUIOverlay();

  LocaleSettings.useDeviceLocale();

  runApp(TranslationProvider(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      darkTheme: ThemeData.dark(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
