import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:meta/meta.dart';

part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteInitial());
  List<CoffeeModle> coffeemodles= [];
  addFavourite(CoffeeModle coffeemodle) {
    if (coffeemodles.isEmpty) {
      emit(FavouriteEmpty());
    }
    coffeemodles.add(coffeemodle);
    emit(FavouriteSucess(coffeemodles: coffeemodles));
  }
}
