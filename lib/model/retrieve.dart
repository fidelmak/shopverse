import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert' as convert;

import 'product.dart';

class ProductService {
  Future<List> fetchProducts() async {
    var response = await rootBundle.loadString('assets/data.json');
    final jsonResponse = convert.jsonDecode(response) as List;
    return jsonResponse.map((product) => Product.fromJson(product)).toList();
  }
}
