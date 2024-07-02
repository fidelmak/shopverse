import 'package:flutter/material.dart';

import '../const/colors.dart';

class SearchText extends StatelessWidget {
  final String hint;
  final bool obscure;

  const SearchText({
    super.key,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 80,
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontSize: 18, color: textGrey),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: primary3,
              ),
              onPressed: () {},
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: priColor),
              borderRadius: BorderRadius.circular(100),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary5),
              borderRadius: BorderRadius.circular(100),
            ),
            fillColor: Colors.grey[50],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(
                width: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
