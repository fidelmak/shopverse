import 'package:flutter/material.dart';
import 'package:shopverse/components/bottom_nav.dart';
import 'package:shopverse/model/use.dart';

import 'const/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNav(),
        backgroundColor: textWhite,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: UseApp(),
        ));
  }
}
