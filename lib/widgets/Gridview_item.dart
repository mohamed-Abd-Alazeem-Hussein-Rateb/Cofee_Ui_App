import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubites/cubit/coffee_cubit.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';
import 'package:flutter_application_1/services/coffee_services.dart';
import 'package:flutter_application_1/widgets/product_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridviewItem extends StatelessWidget {
  const GridviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeCubit(CoffeeServices())..getAllCoffees(),
      child: BlocBuilder<CoffeeCubit,CoffeeState >(
        builder: (context, state) {
          if (state is CoffeeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CoffeeLoaded) {  
            return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount:state.coffees.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                coffe: state.coffees[index],
                              )));
                },
                child: ProductItem(
                  coffee: state.coffees[index],
                ),
              );
            },
          );
          } else if (state is CoffeeError) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            return Text('Error');
          }
        },
      ),
    );
  }
}
