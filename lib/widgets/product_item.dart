import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';

class ProductItem extends StatelessWidget {
  final CoffeeModle coffee;

  const ProductItem({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 238,
      width: 156,
      decoration: const BoxDecoration(),
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                coffee.Image,
                fit: BoxFit.fill,
                height: 128,
                width: 140,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  coffee.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Text(
                  coffee.type,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${coffee.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/Icon.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
