import 'package:flutter_app/product/domain/entity/product_entity.dart';

abstract class ProductInterface {
  Future<List<Product>> getProduct();
}