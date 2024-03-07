import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class StringDef {//字符串定义类，在此类中定义所有需要国际化的字符串字段
  static Future<StringDef> load(Locale locale) {
    final String name = locale.countryCode!.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((b) { //执行第(6)步命令后，initializeMessages方法才不会报错
      Intl.defaultLocale = localeName;
      return StringDef();
    });
  }
  static StringDef of(BuildContext context) {
    return Localizations.of<StringDef>(context, StringDef)!;
  }
  String get app_name { //需要国际化的字符串字段名
    return Intl.message(
      'heartknow',  //需要国际化的字符串字段值
      name: 'app_name',
      desc: '...',
    );
  }
  String get home_title { //需要国际化的字符串字段名
    return Intl.message(
      'home title',  //需要国际化的字符串字段值
      name: 'home_title',
      desc: '...',
    );
  }
//...省略其他字符串字段
}