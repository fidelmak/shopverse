import 'package:flutter/material.dart';

class BannerScroll extends StatelessWidget {
  final Image banner_image;
  const BannerScroll({
    super.key,
    required this.banner_image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: banner_image),
    );
  }
}
