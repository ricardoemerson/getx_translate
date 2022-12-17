import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_translate/core/translations/translation_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title_app'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'welcome'.trParams({'name': 'Ricardo Emerson'}),
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              Text(
                'user_list_title_simple'.trPlural('users_list_title_simple', 1),
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'user_list_title_simple'.trPlural('users_list_title_simple', 10),
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              Text(
                'user_list_title'.trPluralParams('users_list_title', 1, {'total': '1'}),
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'user_list_title'.trPluralParams('users_list_title', 10, {'total': '10'}),
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              Text(
                TranslateKey.welcome.trParams({'name': 'Ricardo Emerson'}),
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              Text(
                TranslateKey.userListTitleSimple.trPlural(1),
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                TranslateKey.userListTitleSimple.trPlural(10),
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              Text(
                TranslateKey.userListTitle.trPluralParams(1, {'total': '1'}),
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                TranslateKey.userListTitle.trPluralParams(10, {'total': '10'}),
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('Change to US'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('pt', 'BR'));
                },
                child: const Text('Alterar para BR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
