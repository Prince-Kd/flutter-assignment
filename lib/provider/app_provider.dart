import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppProvider extends ChangeNotifier {
  static const platform = MethodChannel("test_activity");
  int count1 = 1;
  int count2 = 0;
  int count3 = 0;

  getNewActivity() async {
    try {
      count3++;
      Map<String, int> args = {
        "home": count1,
        "second": count2,
        "native": count3
      };
      await platform
          .invokeMethod('startNewActivity', args)
          .then((value) => count1++);
    } on PlatformException catch (err) {
      print(err.message);
    }
    notifyListeners();
  }

  goToScreen(String route, BuildContext context) async {
    count2++;
    Navigator.pushNamed(context, route).then((value) => count1++);
    print('count1: $count1');
    print('count2: $count2');
    notifyListeners();
  }

  goToLastScreen(String route, BuildContext context) {
    count3++;
    Navigator.pushNamed(context, route).then((value) => count1++);
    print('count3: $count3');
    print('count1: $count1');

    notifyListeners();
  }
}
