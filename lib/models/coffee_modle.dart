class CoffeeModle {
  final String name;
  final String image;
  final String type;
  final double rating;
  final int review;
  final String description;
  final double price;

  CoffeeModle({
    required this.name,
    required this.image,
    required this.type,
    required this.rating,
    required this.review,
    required this.description,
    required this.price,
  });

  factory CoffeeModle.fromJson(Map<String, dynamic> json) {
    return CoffeeModle(
      name: json['title'] ?? 'Unknown Name', // تأكد من أن القيمة ليست null
      image: json['image'] ?? 'Unknown Image', // تأكد من أن القيمة ليست null
      type: (json['ingredients'] != null && json['ingredients'].isNotEmpty) 
          ? json['ingredients'][0] 
          : 'Unknown Type', // تأكد من أن القائمة ليست null أو فارغة
      rating: (json['rating'] != null) ? json['rating'].toDouble() : 0.0, // تأكد من النوع
      review: (json['review'] != null) ? json['review'].toInt() : 0, // تأكد من النوع
      description: json['description'] ?? 'No Description Available', // تأكد من أن القيمة ليست null
      price: (json['price'] != null) ? json['price'].toDouble() : 0.0, // تأكد من النوع
    );
  }
 String toString() {
    return 'CoffeeModle(name: $name, Image: $image, type: $type, rating: $rating, review: $review, description: $description, price: $price)';
  }

 

}