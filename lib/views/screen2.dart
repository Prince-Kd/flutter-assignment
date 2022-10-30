import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onLongPress: () {
                //appProvider.getNewActivity();
              },
              onTap: () {},
              child: Image.asset(
                'assets/gwagon.jpg',
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
