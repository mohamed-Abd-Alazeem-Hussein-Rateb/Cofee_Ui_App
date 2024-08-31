part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class CartSucess extends CartState {
  final List<CoffeeModle> coffeemodles;

  CartSucess({required this.coffeemodles});
}

final class CartEmpty extends CartState {}
