import 'package:flutter/material.dart';
import '../models/product.dart';

class AppState extends ChangeNotifier {
  final List<Product> _cartItems = [];
  final List<Product> _wishlist = [];

  List<Product> get cartItems => _cartItems;
  List<Product> get wishlist => _wishlist;

  int _selectedIndex = 0; // <-- add selected index for bottom nav
  int get selectedIndex => _selectedIndex;

  void setPageIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void toggleWishlist(Product product) {
    if (_wishlist.contains(product)) {
      _wishlist.remove(product);
    } else {
      _wishlist.add(product);
    }
    notifyListeners();
  }

  bool isInWishlist(Product product) => _wishlist.contains(product);
}
