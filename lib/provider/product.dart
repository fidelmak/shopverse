import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert' as convert;

import '../model/product.dart';
import 'package:path_provider/path_provider.dart';

class ShopverseProduct extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  Future fetchProducts() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/data.json');

    // Load the local JSON file content
    final jsonStr = await file.readAsString();

    // Parse JSON data
    List<dynamic> jsonData = json.decode(jsonStr);
    _products = jsonData.map((item) => Product.fromJson(item)).toList();
    notifyListeners();
  }
}
