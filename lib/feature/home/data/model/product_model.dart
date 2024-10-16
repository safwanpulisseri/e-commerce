class Product {
  final String slug;
  final String image;
  final double price;

  Product({
    required this.slug,
    required this.image,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      slug: json['slug'] as String,
      image: json['image'] as String,
      // Handle price as String or num
      price: double.tryParse(json['price'].toString()) ?? 0.0,
    );
  }
}
