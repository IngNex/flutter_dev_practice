import 'package:flutter_app/product/infrastructure/data/api/product_data_source.dart';
import 'package:flutter_app/product/infrastructure/repositories/product_repository.dart';
import 'package:flutter_app/product/services/product_service.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

initInjectable() {
  // Product
  locator.registerFactory<ProductDataSouce>(() => ProductDataSouce());
  locator.registerFactory<ProductRepository>(
      () => ProductRepository(locator.get()));
  locator.registerFactory<ProductService>(() => ProductService(locator.get()));
}