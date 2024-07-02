import 'package:flutter/material.dart';
import 'package:shopverse/model/use.dart';

import 'package:shopverse/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopverse',
      home: SafeArea(child: UseApp()),
    );
  }
}
