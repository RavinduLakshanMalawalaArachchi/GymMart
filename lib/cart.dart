// cart.dart
import 'product_details.dart';

class Cart {
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;
  Cart._internal();

  final List<Product> items = [];

  void add(Product product) {
    items.add(product);
  }

  void remove(Product product) {
    items.remove(product);
  }

  void clear() {
    items.clear();
  }
}
