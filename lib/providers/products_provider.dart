import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(id: '1', title: 'Backpack', price: 100, image: 'assets/products/backpack.png'),
  Product(id: '2', title: 'Drum', price: 200, image: 'assets/products/drum.png'),
  Product(id: '3', title: 'Guitar', price: 300, image: 'assets/products/guitar.png'),
  Product(id: '4', title: 'Jeans', price: 400, image: 'assets/products/jeans.png'),
  Product(id: '5', title: 'Karati', price: 500, image: 'assets/products/karati.png'),
  Product(id: '6', title: 'Shorts', price: 600, image: 'assets/products/shorts.png'),
  Product(id: '7', title: 'Skates', price: 700, image: 'assets/products/skates.png'),
  Product(id: '8', title: 'Suitcase', price: 800, image: 'assets/products/suitcase.png'),
];

@riverpod
List<Product> products(ref){
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref){
 return allProducts.where((product) => product.price < 500).toList();
}