import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
     List<CoffeeModle> coffeemodles = [];

  // دالة تبديل حالة المفضلة
void toggleFavourite(CoffeeModle coffeemodle) {
    if (coffeemodles.contains(coffeemodle)) {
      coffeemodles.remove(coffeemodle);
      coffeemodle.isFavorite = false;  // تحديث حالة isFavorite هنا
    } else {
      coffeemodles.add(coffeemodle);
      coffeemodle.isFavorite = true;  // تحديث حالة isFavorite هنا
    }
    emit(CartSucess(coffeemodles: coffeemodles)); // التأكد من إعادة البناء
  }
}
