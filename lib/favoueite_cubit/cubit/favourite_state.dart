part of 'favourite_cubit.dart';

@immutable
sealed class FavouriteState {}

final class FavouriteInitial extends FavouriteState {}
final class FavouriteSucess extends FavouriteState {
  final List<CoffeeModle> coffeemodles;

  FavouriteSucess({required this.coffeemodles});
}

final class FavouriteEmpty extends FavouriteState {}
