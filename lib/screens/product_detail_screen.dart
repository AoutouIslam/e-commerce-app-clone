import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/cart.dart';
import '../providers/app_state.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'profile_screen.dart';
import 'package:my_ecommerce_app/main.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Map<String, ProductVariant> selectedVariants = {};

  @override
  void initState() {
    super.initState();
    for (var option in widget.product.options) {
      selectedVariants[option.name] = option.variants.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = selectedVariants.values.fold(0.0, (sum, v) => sum + v.price);

    return Consumer<AppState>(
      builder: (context, appState, child) {
        final pages = [
          const HomeScreen(),
          const CartScreen(),
          const ProfileScreen(),
        ];

        final cart = Provider.of<CartModel>(context);

        return Scaffold(
          appBar: AppBar(title: Text(widget.product.title)),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.product.imageUrl, height: 200, fit: BoxFit.cover),
                const SizedBox(height: 16),
                Text(widget.product.title,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(widget.product.description),
                const SizedBox(height: 16),
                // Product options
                ...widget.product.options.map((option) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(option.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: option.variants.map((variant) {
                          final isSelected = selectedVariants[option.name] == variant;
                          return ChoiceChip(
                            label: Text(variant.label),
                            selected: isSelected,
                            onSelected: (_) {
                              setState(() {
                                selectedVariants[option.name] = variant;
                              });
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                }).toList(),
                Text("Price: \$${totalPrice.toStringAsFixed(2)}",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    cart.addToCart(widget.product, selectedVariants);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Added to cart!"), duration: Duration(seconds: 1)),
                    );
                  },
                  child: const Text("Add to Cart"),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: appState.selectedIndex,
            onTap: (index) {
              appState.setPageIndex(index);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const MainScreen()),
                (route) => false,
              );
            },
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    const Icon(Icons.shopping_cart),
                    if (cart.items.isNotEmpty)
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text(
                            cart.items.length.toString(),
                            style: const TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                  ],
                ),
                label: "Cart",
              ),
              const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        );
      },
    );
  }
}
