import 'package:flutter/material.dart';
 
import '../domain/product.dart';
 
class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});
 
  final Product product;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 98, 90, 90),
      ),
 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
 
            const SizedBox(height: 10),
            Text(
              'Marca: ${product.brand ?? 'Desconhecida'}',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 10),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Categoria: ${product.category}',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 10),
            Text(
              'Preço: R\$ ${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 83, 230, 87),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}