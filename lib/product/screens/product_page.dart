import 'package:flutter/material.dart';
import 'package:flutter_app/injectable.dart';
import 'package:flutter_app/product/domain/entity/product_entity.dart';
import 'package:flutter_app/product/services/product_service.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductScreen> {
  late List<Product> product;
  bool loading = true;
  @override
  void initState() {
    getProduct();
    super.initState();
  }

  void getProduct() async {
    ProductService service = locator<ProductService>();

    await service.getProductService().then((value) {
      setState(() {
        product = value;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ): Column(
        children: [
          if (product.isNotEmpty)
            ...product.map((producto) {
              return Text(producto.name!);
            }).toList()
        ],
      ),
    );
  }
}
