import 'package:flutter/material.dart';

import 'ui/home/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VSCode for Mobile',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
