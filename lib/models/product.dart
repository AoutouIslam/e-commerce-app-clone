class ProductOption {
  final String name; // e.g., "Color", "Size", "Capacity"
  final List<ProductVariant> variants;

  ProductOption({
    required this.name,
    required this.variants,
  });
}

class ProductVariant {
  final String label; // e.g., "Red", "64GB", "XL"
  final double price;

  ProductVariant({
    required this.label,
    required this.price,
  });
}

class Product {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String categoryId;
  final List<ProductOption> options;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.categoryId,
    required this.options,
  });
}
