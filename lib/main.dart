import 'package:get_it/get_it.dart';
import 'package:resume/db.dart';
import 'package:resume/gen/i18n/strings.g.dart';
import 'package:resume/services/profile_service.dart';
import 'package:resume/utils.dart';
import 'package:flutter/material.dart';
import 'package:resume/navigation/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpSystemUIOverlay();

  LocaleSettings.useDeviceLocale();

  GetIt.I.registerSingleton<UserDataRepo>(await UserDataByGetStorage.init());
  GetIt.I.registerSingleton(ProfileService());

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
