import 'package:flutter_app/product/domain/entity/product_entity.dart';
import 'package:flutter_app/product/domain/interface/product_interface.dart';
import 'package:flutter_app/product/infrastructure/data/api/product_data_source.dart';

class ProductRepository implements ProductInterface{

  final ProductDataSouce _productDataSouce;

  ProductRepository(this._productDataSouce);

  @override
  Future<List<Product>> getProduct() async {
    return await _productDataSouce.getProductData();
  }

}