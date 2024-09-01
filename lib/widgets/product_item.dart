import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_application_1/widgets/botton_cart.dart';
import 'package:flutter_application_1/widgets/botton_favourite.dart';


class ProductItem extends StatelessWidget {
  final CoffeeModle coffee;

  const ProductItem({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      width: 156,
      decoration: const BoxDecoration(),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottonCart(coffee: coffee),
              BottonFavourite(coffee: coffee),
                ],
              ),
            ),
            const SizedBox(height: 1),
             ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: coffee.image,
                fit: BoxFit.cover,
                height: 128,
                width: 140,
                placeholder: (context, url) => const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(
                  color: Colors.brown,
                ))),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 8),
                Text(
                  coffee.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 1),
            Row(
              children: [
                const SizedBox(width: 5),
                Text(
                  coffee.type,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text(
                    '\$25', // عرض السعر بشكل صحيح
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/Icon.png', height: 20, width: 20, fit: BoxFit.cover),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

