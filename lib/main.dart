import 'package:common/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tmdb_clean_architecture/di/index.dart';
import 'package:tmdb_clean_architecture/presentation/home/home_page.dart';
import 'package:tmdb_clean_architecture/styles/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjector.injectModules();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: LocalizationHelper.supportedLocales,
      locale: LocalizationHelper.defaultLocale,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        LocalizationHelper.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Movies App',
      theme: darkTheme,
      home: const HomePage(),
    );
  }
}
