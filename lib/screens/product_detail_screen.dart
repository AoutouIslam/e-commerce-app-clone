import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  ProductDetailScreen({required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Map<String, ProductVariant> selectedVariants = {}; // optionName -> variant

  @override
  void initState() {
    super.initState();
    // default selections
    for (var option in widget.product.options) {
      selectedVariants[option.name] = option.variants.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = selectedVariants.values.fold(0, (sum, v) => sum + v.price);

    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.product.imageUrl, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(widget.product.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(widget.product.description),
            SizedBox(height: 16),
            ...widget.product.options.map((option) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(option.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
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
                  SizedBox(height: 16),
                ],
              );
            }).toList(),
            Text("Price: \$${totalPrice.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
