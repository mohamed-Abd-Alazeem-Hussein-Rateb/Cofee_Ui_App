import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubites/cubit/coffee_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_application_1/widgets/favourite_product.dart';
import 'package:flutter_application_1/widgets/product_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteIds = context.select<CoffeeCubit, Set<String>>(
      (cubit) => cubit.favoriteIds,
    );
    final coffees = context.select<CoffeeCubit, List<CoffeeModle>>(
      (cubit) => cubit.coffees.where((coffee) => favoriteIds.contains(coffee.name)).toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          final coffee = coffees[index];
          return FavouriteProduct(coffee: coffee);
        },
      ),
    );
  }
}
