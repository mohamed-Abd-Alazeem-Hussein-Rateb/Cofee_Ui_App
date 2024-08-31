import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubites/cubit/coffee_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductItem extends StatelessWidget {
  final CoffeeModle coffee;

  const ProductItem({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    final isFavorite = context.select<CoffeeCubit, bool>(
      (cubit) => cubit.favoriteIds.contains(coffee.name), // استخدام الاسم كـ ID
    );

    return Container(
      height: 295,
      width: 156,
      decoration: const BoxDecoration(),
      child: Card(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  context.read<CoffeeCubit>().toggleFavorite(coffee.name);
                },
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 1),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                coffee.image,
                fit: BoxFit.cover,
                height: 128,
                width: 140,
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

