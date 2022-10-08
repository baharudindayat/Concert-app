import 'package:flutter/material.dart';

import 'main_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concert',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
