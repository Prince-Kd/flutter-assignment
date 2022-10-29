import 'package:assignment_savannah/provider/app_provider.dart';
import 'package:assignment_savannah/views/screen2.dart';
import 'package:assignment_savannah/views/screen3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Home(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
      initialRoute: '/',
      //home: Home(),
    );
  }
}
