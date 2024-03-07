import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'StringDef.dart';

class MyLocalizationsDelegate extends LocalizationsDelegate<StringDef> {//Locale代理类
  const MyLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode); //支持的语言列表
  @override
  Future<StringDef> load(Locale locale) { //系统会调此方法加载Locale资源类
    return StringDef.load(locale);
  }
  @override
  bool shouldReload(MyLocalizationsDelegate old) => false; //重新build时，是否调用load重新加载Locale资源.
}