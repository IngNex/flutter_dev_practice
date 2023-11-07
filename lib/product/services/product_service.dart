import 'package:flutter_app/product/domain/entity/product_entity.dart';
import 'package:flutter_app/product/infrastructure/repositories/product_repository.dart';

class ProductService{
  final ProductRepository _productRepository;

  ProductService(this._productRepository);

  Future<List<Product>> getProductService() async {
    return await _productRepository.getProduct();
  }
}