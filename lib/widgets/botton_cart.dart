import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_cubit/cubit/cart_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottonCart extends StatelessWidget {
  const BottonCart({super.key, required this.coffee});
  final CoffeeModle coffee;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
         bool isFavorite = coffee.isFavorite;
  var cubit = BlocProvider.of<CartCubit>(context);
        return  Align(
                 alignment: Alignment.topLeft,
                 child: InkWell(
                  onTap: () {
                    cubit.toggleCart(coffee);
                  },
                   child: Icon(
                  isFavorite ? Icons.shopping_cart :  Icons.shopping_cart_outlined,
                    color: isFavorite ? Colors.red : Colors.black,
                   ),
                 ),
               );
      }
      );
  }
}