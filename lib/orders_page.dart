// orders_page.dart
import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    final cartItems = Cart().items; // Access global cart

    return Scaffold(
      appBar: AppBar(title: const Text("Your Orders"), centerTitle: true),
      body: cartItems.isEmpty
          ? const Center(
              child: Text(
                "No items in your cart.",
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: cartItems.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final product = cartItems[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      product.image,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(product.title),
                  subtitle: Text(product.price),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        Cart().remove(product); // remove item from cart
                      });
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: cartItems.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Order placed successfully!")),
                  );
                  setState(() {
                    Cart().clear(); // clear cart after order
                  });
                },
                child: const Text(
                  "Place Order",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          : null,
    );
  }
}
