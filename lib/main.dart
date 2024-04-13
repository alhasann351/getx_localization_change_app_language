import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_localization_change_app_language/languages.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('bn', 'BD'),
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      home: const MyHomePage(),
    );
  }
}
