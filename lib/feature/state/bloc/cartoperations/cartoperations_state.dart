part of 'cartoperations_bloc.dart';

@freezed
class CartoperationsState with _$CartoperationsState {
  const factory CartoperationsState.insertdatatocart(
      {required InsetCartRespModel? respModel}) = Insertdatatocart;

  factory CartoperationsState.initial() =>
      const CartoperationsState.insertdatatocart(respModel: null);
}
