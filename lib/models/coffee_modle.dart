class CoffeeModle {
  final String name;
  final String Image;
  final String type;
  final double rating;
  final int review;
  final String description;
  final double price;

  CoffeeModle({
    required this.name,
    required this.Image,
    required this.type,
    required this.rating,
    required this.review,
    required this.description,
    required this.price,
  });

  factory CoffeeModle.fromJson(Map<String, dynamic> json) {
    return CoffeeModle(
      name: json['name'] ?? 'Unknown Name', // تأكد من أن القيمة ليست null
      Image: json['Image'] ?? 'Unknown Image', // تأكد من أن القيمة ليست null
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
    return 'CoffeeModle(name: $name, Image: $Image, type: $type, rating: $rating, review: $review, description: $description, price: $price)';
  }

  static List<CoffeeModle> coffees = [
  CoffeeModle(
    name: 'Cappuccino',
    Image: 'assets/coffee-drink- Cappuccino.jpg',
    type: 'Cappuccino',
    rating: 4.5,
    review: 120,
    description:
        'Cappuccino is a rich and creamy coffee drink made with equal parts espresso, steamed milk, and milk foam. Perfect for a morning boost.',
    price: 4.50,
  ),
  CoffeeModle(
    name: 'Latte',
    Image: 'assets/coffiee.jpg',
    type: 'Latte',
    rating: 4.7,
    review: 180,
    description:
        'Latte is a smooth and velvety coffee made with a shot of espresso and plenty of steamed milk, topped with a small layer of milk foam.',
    price: 4.75,
  ),
  CoffeeModle(
    name: 'Espresso',
    Image: 'assets/coffee-with-Espresso.jpg',
    type: 'Espresso',
    rating: 4.8,
    review: 250,
    description:
        'Espresso is a strong and bold coffee, made by forcing hot water through finely-ground coffee beans. It\'s the base for many other coffee drinks.',
    price: 3.50,
  ),
  CoffeeModle(
    name: 'Americano',
    Image: 'assets/Americano-coffee.jpg',
    type: 'Americano',
    rating: 4.6,
    review: 90,
    description:
        'Americano is a simple and smooth coffee made by diluting a shot of espresso with hot water, giving it a lighter taste while retaining the espresso\'s bold flavor.',
    price: 3.75,
  ),
  CoffeeModle(
    name: 'Mocha',
    Image: 'assets/coffee-cocktail-Mocha.jpg',
    type: 'Mocha',
    rating: 4.9,
    review: 130,
    description:
        'Mocha is a delightful coffee drink that combines the rich flavors of chocolate and espresso, topped with steamed milk and whipped cream.',
    price: 5.00,
  ),
  CoffeeModle(
    name: 'Macchiato',
    Image: 'assets/5.png',
    type: 'Macchiato',
    rating: 4.7,
    review: 100,
    description:
        'Macchiato is a bold and strong coffee with a dash of steamed milk, perfect for those who enjoy the intense flavor of espresso with a touch of creaminess.',
    price: 4.25,
  ),
  CoffeeModle(
    name: 'Flat White',
    Image: 'assets/4.png',
    type: 'Flat White',
    rating: 4.8,
    review: 140,
    description:
        'Flat White is a velvety smooth coffee made with a shot of espresso and steamed milk, with a microfoam layer that gives it a creamy texture without being too foamy.',
    price: 4.85,
  ),
  CoffeeModle(
    name: 'Cold Brew',
    Image: 'assets/3.png',
    type: 'Cold Brew',
    rating: 4.9,
    review: 200,
    description:
        'Cold Brew is a refreshing and smooth coffee made by steeping coarsely-ground coffee beans in cold water for several hours, resulting in a less acidic and more flavorful drink.',
    price: 5.50,
  ),
  CoffeeModle(
    name: 'Affogato',
    Image: 'assets/2.png',
    type: 'Affogato',
    rating: 4.8,
    review: 80,
    description:
        'Affogato is a delicious Italian dessert-coffee made by pouring a shot of hot espresso over a scoop of vanilla gelato, creating a perfect blend of hot and cold, creamy and strong.',
    price: 6.00,
  ),
  CoffeeModle(
    name: 'Turkish Coffee',
    Image: 'assets/1.png',
    type: 'Turkish Coffee',
    rating: 4.6,
    review: 70,
    description:
        'Turkish Coffee is a traditional and strong coffee, finely ground and simmered in water with sugar, served unfiltered for a thick and robust flavor.',
    price: 4.00,
  ),
  CoffeeModle(
    name: 'Irish Coffee',
    Image: 'assets/Irish Coffee.jpg',
    type: 'Irish Coffee',
    rating: 4.7,
    review: 60,
    description:
        'Irish Coffee is a classic cocktail that combines hot coffee, Irish whiskey, sugar, and a thick layer of cream. Perfect for a warm, cozy evening.',
    price: 7.00,
  ),
  CoffeeModle(
    name: 'Cortado',
    Image: 'assets/coffiee.jpg',
    type: 'Cortado',
    rating: 4.6,
    review: 85,
    description:
        'Cortado is a balanced coffee drink made with equal parts espresso and steamed milk, providing a rich flavor with a smooth finish.',
    price: 4.25,
  ),
];


}