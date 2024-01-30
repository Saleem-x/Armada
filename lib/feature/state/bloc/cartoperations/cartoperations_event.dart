part of 'cartoperations_bloc.dart';

@freezed
class CartoperationsEvent with _$CartoperationsEvent {
  const factory CartoperationsEvent.insertTOCart(
      {required InsertCartModel cartitem}) = InsertTOCart;

  const factory CartoperationsEvent.deleteCartItem(
      {required DeleteCartModel cartitem}) = DeleteCartItem;
}
