import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoueite_cubit/cubit/favourite_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottonFavourite extends StatelessWidget {
  const BottonFavourite({super.key, required this.coffee});
 final CoffeeModle coffee;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<FavouriteCubit>(context);
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, state) {
        return  Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                  cubit.addFavourite(coffee);
                  coffee.isFavorite = true;
                  },
                  child: Icon(
                     coffee.isFavorite
                  ? Icons.favorite_outlined
                  : Icons.favorite_outline_sharp,
              size: 20,
              color: coffee.isFavorite ? Colors.red : Colors.black,
                  ),
                ),
              );
      }
      );
  }
}