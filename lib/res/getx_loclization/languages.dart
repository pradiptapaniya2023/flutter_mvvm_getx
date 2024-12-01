import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter email',
          'internet_exception':
              "we're unable to show results. \n please check your data \n connection. "
        },
        'gu_IN': {'email_hint': 'ઇમેલ દાખલ કરો'},
      };
}
