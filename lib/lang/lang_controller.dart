import 'package:ed_app/lang/en.dart';
import 'package:ed_app/lang/model/lang.dart';
import 'package:ed_app/lang/ru.dart';

class LangController {

  static final Map<String, Lang> _language = {
    'en': EnLang(),
    'ru': RuLang()
  };

  static getUserLang(String langCode) {
    return _language[langCode] ?? _language["en"];
  }

}