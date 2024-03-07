import 'dart:ui';

import 'package:flutter_localizations/flutter_localizations.dart';

MaterialApp(
localizationsDelegates: [
// 本地化的代理类
GlobalMaterialLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
],
supportedLocales: [
const Locale('en', 'US'), // 美国英语
const Locale('zh', 'CN'), // 中文简体
//其他Locales
],
// ...
)