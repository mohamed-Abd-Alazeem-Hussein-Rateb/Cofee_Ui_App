import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/coffee_services.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
          Center(
            child: ElevatedButton(
              onPressed: () {
                CoffeeServices().getAllCoffees();
              }, 
            child:const Icon(Icons.add_shopping_cart)),
          ),
        ],
      ),
    );
  }
}