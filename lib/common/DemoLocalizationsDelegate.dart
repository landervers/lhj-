import 'package:flutter/material.dart';

localizationsDelegates: [
// 本地化的代理类
GlobalMaterialLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
// 注册我们的Delegate
DemoLocalizationsDelegate()
],
return Scaffold(
appBar: AppBar(
//使用Locale title
title: Text(DemoLocalizations.of(context).title),
),
... //省略无关代码
）