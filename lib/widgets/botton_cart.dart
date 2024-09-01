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
        var cartCubit = BlocProvider.of<CartCubit>(context);
        bool isInCart = cartCubit.coffeemodles.contains(coffee);

        return Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: () {
              BlocProvider.of<CartCubit>(context).toggleCart(coffee);
            },
            child: Icon(
              isInCart ? Icons.shopping_cart : Icons.shopping_cart_outlined,
              color: isInCart ? Colors.red : Colors.black,
            ),
          ),
        );
      },
    );
  }
}

