import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_translate/core/translations/translation_keys.dart';
import 'package:getx_translate/pages/home/home_page.dart';

late TranslationKeys translationKeys;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  translationKeys = TranslationKeys();
  await translationKeys.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Translations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: translationKeys,
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('pt', 'BR'),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
      ],
    );
  }
}
