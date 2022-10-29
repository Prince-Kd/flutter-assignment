import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppProvider extends ChangeNotifier {
  static const platform = MethodChannel("test_activity");
  int count1 = 1;
  int count2 = 0;
  int count3 = 0;

  getNewActivity() async {
    try {
      await platform.invokeMethod('startNewActivity');
      count3++;
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
