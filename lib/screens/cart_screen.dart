
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_cubit/cubit/cart_cubit.dart';
import 'package:flutter_application_1/widgets/cart_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if(state is CartSucess){
            return ListView.builder(
              itemCount: state.coffeemodles.length,
              itemBuilder: (context, index) {
                return CartProduct(coffee:state.coffeemodles[index]);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
        ),
    );
  }
}