import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoueite_cubit/cubit/favourite_cubit.dart';
import 'package:flutter_application_1/widgets/favourite_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Favorites'),
      ),
      body: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          if(state is FavouriteSucess ){
            return ListView.builder(
              itemCount: state.coffeemodles.length,
              itemBuilder: (context, index) {

                return FavouriteProduct(coffee:state.coffeemodles[index]);
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
