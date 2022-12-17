import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

enum TranslateKey {
  titleApp('title_app'),
  welcome('welcome'),
  userListTitleSimple('user_list_title_simple', plural: 'users_list_title_simple'),
  userListTitle('user_list_title', plural: 'users_list_title');

  final String key;
  final String? plural;

  const TranslateKey(this.key, {this.plural});

  String get tr => key.tr;

  String trParams(Map<String, String> params) => key.trParams(params);

  String trPlural(int total) {
    if (plural != null) {
      return key.trPlural(plural, total);
    }

    return '';
  }

  String trPluralParams(int total, Map<String, String> params) {
    if (plural != null) {
      return key.trPluralParams(plural, total, params);
    }

    return '';
  }
}

class TranslationKeys extends Translations {
  var ptKeys = <String, String>{};
  var enKeys = <String, String>{};

  Future<void> load() async {
    ptKeys =
        Map<String, String>.from(jsonDecode(await rootBundle.loadString('assets/locales/pt.json')));
    enKeys =
        Map<String, String>.from(jsonDecode(await rootBundle.loadString('assets/locales/en.json')));
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'pt_BR': ptKeys,
        'en_US': enKeys,
      };
}
