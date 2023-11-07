import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:flutter_app/common/utils/http_helper.dart';
import 'package:flutter_app/product/domain/entity/product_entity.dart';

class ProductDataSouce extends HttpHelper {
  ProductDataSouce({apiUrl = 'products'}) : super(apiUrl);

  Future<List<Product>> getProductData() async {
    String url = '';
    final Response? result = await this.get(url);

    if (result == null || result.statusCode != HttpStatus.ok) {
      throw ErrorDescription('Hubo un error');
    }

    final jsonReponse = json.decode(result.body);
    List<Product> profiles =
        jsonReponse.map<Product>((e) => Product.fromJson(e)).toList();
    return profiles;
  }
}
