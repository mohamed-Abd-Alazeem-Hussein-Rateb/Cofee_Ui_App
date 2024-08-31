part of 'coffee_cubit.dart';

@immutable
sealed class CoffeeState {}

final class CoffeeInitial extends CoffeeState {}

final class CoffeeLoading extends CoffeeState {}

final class CoffeeLoaded extends CoffeeState {
  final List<CoffeeModle> coffees;
  CoffeeLoaded(this.coffees);
}

final class CoffeeError extends CoffeeState {
  final String message;
  CoffeeError(this.message);
}
