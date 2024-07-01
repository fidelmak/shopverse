import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopverse/model/product.dart';
import 'dart:convert' as convert;

import 'retrieve.dart';

class UseApp extends StatefulWidget {
  const UseApp({super.key});

  @override
  State<UseApp> createState() => _UseAppState();
}

class _UseAppState extends State<UseApp> {
  List _items = [];

  Future<void> fetchProducts() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    print(data.length);
    setState(() {
      _items = data["products"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return _items.isNotEmpty
        ? SingleChildScrollView(
            child:
                Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return Card(
                key: ValueKey(_items[index]['id'.toString()]),
                margin: EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.network(_items[index]["image"]),
                  title: Text(_items[index]['name']),
                  subtitle: Text(_items[index]['price']),
                ),
              );
            })),
          )
        : Container(
            child: Center(
              child: TextButton(
                onPressed: fetchProducts,
                child: Text(
                  "data",
                  style: TextStyle(color: Colors.black, fontSize: 48),
                ),
              ),
            ),
          );
  }
}
