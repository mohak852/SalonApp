import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
class DemoLocalizations {
  final Locale localeName;
  DemoLocalizations(this.localeName);

  
  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  Map<String,String> _localizedValues;
  Future load() async {
    String jsonStringValues = await rootBundle.loadString('i18n/${localeName.languageCode}.json');
    Map<String,dynamic> maappedJson = json.decode(jsonStringValues);
  }
}