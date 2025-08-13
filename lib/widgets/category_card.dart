import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryCard({super.key, required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(category.imageUrl, height: 60, width: 60, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Text(category.name, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
