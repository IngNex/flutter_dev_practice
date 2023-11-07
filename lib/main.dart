import 'package:flutter/material.dart';
import 'package:flutter_app/injectable.dart';
import 'package:flutter_app/product/screens/product_page.dart';

void main() {
  initInjectable(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProductScreen(),
      
    );
  }
}
