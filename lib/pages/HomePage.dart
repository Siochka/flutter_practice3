import 'package:flutter/material.dart';
import 'package:cards/data/data.dart';
import 'package:cards/components/product_comp.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Онлайн магазин')
        ),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
          itemCount: data_products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductComponent( product: data_products[index]);
          }
      ),
    );
  }
}