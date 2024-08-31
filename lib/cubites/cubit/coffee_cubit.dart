import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_application_1/services/coffee_services.dart';
import 'package:meta/meta.dart';

part 'coffee_state.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  CoffeeCubit(this.coffeeServices) : super(CoffeeInitial());
  final CoffeeServices coffeeServices;
  List<CoffeeModle> coffees = [];

  Future<void> getAllCoffees() async {
    emit(CoffeeLoading());
    try {
      coffees = await coffeeServices.getAllCoffees(); // استخدام coffeeServices هنا
      emit(CoffeeLoaded(coffees));
    } catch (e) {
      emit(CoffeeError(e.toString()));
    }
  }

 Set<String> favoriteIds = {};
    void toggleFavorite(String coffeeId) {
    if (favoriteIds.contains(coffeeId)) {
      favoriteIds.remove(coffeeId);
    } else {
      favoriteIds.add(coffeeId);
    }
    emit(CoffeeLoaded(coffees));
  }
}

