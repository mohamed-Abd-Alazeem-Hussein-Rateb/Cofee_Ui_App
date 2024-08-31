class CoffeeModle {
  final String name;
  final String image;
  final String type;
  final double rating;
  final int review;
  final String description;
  final double price;
  bool isFavorite; // إضافة خاصية التفضيل

  CoffeeModle({
    required this.name,
    required this.image,
    required this.type,
    required this.rating,
    required this.review,
    required this.description,
    required this.price,
    this.isFavorite = false, // تعيين القيمة الافتراضية
  });

  factory CoffeeModle.fromJson(Map<String, dynamic> json) {
    return CoffeeModle(
      name: json['title'] ?? 'Unknown Name',
      image: json['image'] ?? 'Unknown Image',
      type: (json['ingredients'] != null && json['ingredients'].isNotEmpty) 
          ? json['ingredients'][0] 
          : 'Unknown Type',
      rating: (json['rating'] != null) ? json['rating'].toDouble() : 0.0,
      review: (json['review'] != null) ? json['review'].toInt() : 0,
      description: json['description'] ?? 'No Description Available',
      price: (json['price'] != null) ? json['price'].toDouble() : 0.0,
    );
  }

  @override
  String toString() {
    return 'CoffeeModle(name: $name, image: $image, type: $type, rating: $rating, review: $review, description: $description, price: $price, isFavorite: $isFavorite)';
  }
}
