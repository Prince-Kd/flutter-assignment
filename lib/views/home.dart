import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onLongPress: () {
                //appProvider.goToLastScreen("/screen3", context);
                appProvider.getNewActivity();
              },
              onTap: () {
                appProvider.goToScreen('/screen2', context);
              },
              child: Image.asset(
                'assets/rr.jpg',
                height: 100,
                width: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
