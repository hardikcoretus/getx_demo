import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello, How are you ?',
          'lbl_name': 'Name',
          'hint_enter_name': 'Enter Your Name',
        },
        'hi_IN': {
          'hello': 'नमस्ते,आप कैसे हैं ?',
          'lbl_name': 'नाम',
          'hint_enter_name': 'अपना नाम दर्ज करें',
        },
        'fr_FR': {
          'hello': 'Bonjour,Comment ca va ?',
          'lbl_name': 'Nom',
          'hint_enter_name': 'Entrez votre nom',
        }
      };
}
