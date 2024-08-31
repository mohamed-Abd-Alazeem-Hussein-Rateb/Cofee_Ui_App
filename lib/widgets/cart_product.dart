import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_cubit/cubit/cart_cubit.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_application_1/widgets/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({super.key, required this.coffee});
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
                  child: Image.network(
                    coffee.image,
                    fit: BoxFit.cover,
                    height: 128,
                    width: 140,
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(coffee.name),
                    const SizedBox(height: 10),
                   const Text(
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
                    BlocBuilder<CartCubit, CartState>(
                      builder: (context, state) {
                        var cubit = BlocProvider.of<CartCubit>(context);
                        return IconButton(
                            onPressed: () {
                             cubit.toggleCart(coffee);
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