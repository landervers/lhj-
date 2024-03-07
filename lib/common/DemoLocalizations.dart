//Locale资源类
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DemoLocalizations {
  DemoLocalizations(this.isZh);
  //是否为中文
  bool isZh = false;
  //为了使用方便，我们定义一个静态方法
  static DemoLocalizations? of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }
  //Locale相关值，title为应用标题
  String get title {
    return isZh ? "Flutter应用" : "Flutter APP";
  }
//... 其他的值
}
remainingEmailsMessage(int howMany) => Intl.plural(howMany,
    zero: 'There are no emails left',
    one: 'There is $howMany email left',
    other: 'There are $howMany emails left',
    name: "remainingEmailsMessage",
    args: [howMany],
    desc: "How many emails remain after archiving.",
    examples: const {'howMany': 42, 'userName': 'Fred'});