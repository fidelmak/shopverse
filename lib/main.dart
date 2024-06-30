import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopverse/provider/product.dart';
import 'package:shopverse/screen/home_page.dart';
import 'package:shopverse/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopverseProduct(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shopverse',
        home: SplashScreen(),
      ),
    );
  }
}
