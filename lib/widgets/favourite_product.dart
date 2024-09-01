import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoueite_cubit/cubit/favourite_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_application_1/widgets/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteProduct extends StatelessWidget {
  const FavouriteProduct({super.key, required this.coffee});
  final CoffeeModle coffee;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 130,
            width: double.infinity,
            child: Card(
              child: Row(children: [
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
                const SizedBox(width: 30),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(coffee.name),
                    const SizedBox(height: 10),
                    Text(
                      '\$ 20',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: kprimaryColor),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlocBuilder<FavouriteCubit, FavouriteState>(
                      builder: (context, state) {
                        var cubit = BlocProvider.of<FavouriteCubit>(context);
                        return IconButton(
                            onPressed: () {
                             cubit.toggleFavourite(coffee);
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ));
                      },
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
