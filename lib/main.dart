import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packages/animated_textt.dart';
import 'package:packages/awesome_dialogg.dart';
import 'package:packages/pages/home_page.dart';
import 'package:packages/pages/intro_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ru', 'RU'),
          Locale('uz', 'UZ'),
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('ru', 'RU'),
        startLocale: Locale('ru','RU'),
        saveLocale: true,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
    );
  }
}
