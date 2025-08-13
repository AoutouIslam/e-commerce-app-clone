import 'package:flutter/material.dart';
import '../models/product.dart';

class CartItem {
  final Product product;
  final Map<String, ProductVariant> selectedVariants;
  int quantity;

  CartItem({
    required this.product,
    required this.selectedVariants,
    this.quantity = 1,
  });

  double get totalPrice =>
    selectedVariants.values.fold(0.0, (sum, v) => sum + v.price) * quantity;
}

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  void addToCart(Product product, Map<String, ProductVariant> selectedVariants) {
    final index = _items.indexWhere((item) =>
        item.product.id == product.id &&
        _mapEquals(item.selectedVariants, selectedVariants));

    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(product: product, selectedVariants: selectedVariants));
    }
    notifyListeners(); // notify UI to rebuild
  }

  void removeFromCart(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  double get totalAmount =>
      _items.fold(0, (sum, item) => sum + item.totalPrice);

  bool _mapEquals(Map a, Map b) {
    if (a.length != b.length) return false;
    for (var key in a.keys) {
      if (!b.containsKey(key) || a[key] != b[key]) return false;
    }
    return true;
  }
}
