import 'package:flutter/material.dart';
import 'package:shopverse/model/home_page.dart';

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
