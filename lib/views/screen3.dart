import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Consumer<AppProvider>(builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Screen Image',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    'Number of visits',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/rr.jpg',
                    height: 200,
                    width: 200,
                  ),
                  Expanded(
                    child: Text(
                      '${model.count1}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/gwagon.jpg',
                    height: 200,
                    width: 200,
                  ),
                  Expanded(
                    child: Text(
                      '${model.count2}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/bmw.jpg',
                    height: 200,
                    width: 200,
                  ),
                  Expanded(
                    child: Text(
                      '${model.count3}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
