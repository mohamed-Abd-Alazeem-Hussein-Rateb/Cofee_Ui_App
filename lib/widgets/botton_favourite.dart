import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoueite_cubit/cubit/favourite_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottonFavourite extends StatelessWidget {
  const BottonFavourite({super.key, required this.coffee});
  final CoffeeModle coffee;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, state) {
        // نتأكد أن الحاله محدثة بشكل صحيح
        bool isFavorite = coffee.isFavorite;

        return Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {
              // نحدث الحاله هنا
              BlocProvider.of<FavouriteCubit>(context).toggleFavourite(coffee);
            },
            child: Icon(
              isFavorite ? Icons.favorite_outlined : Icons.favorite_outline_sharp,
              size: 20,
              color: isFavorite ? Colors.red : Colors.black,
            ),
          ),
        );
      },
    );
  }
}
