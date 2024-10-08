import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:meta/meta.dart';

part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteInitial());
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
    emit(FavouriteSucess(coffeemodles: coffeemodles)); // التأكد من إعادة البناء
  }
}
