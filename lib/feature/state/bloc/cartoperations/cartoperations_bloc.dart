import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/delete_cart_model/delete_cart_model.dart';
import 'package:armada/feature/data/models/insert_cart_model/insert_cart_model.dart';
import 'package:armada/feature/data/models/inset_cart_resp_model/inset_cart_resp_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cartoperations_event.dart';
part 'cartoperations_state.dart';
part 'cartoperations_bloc.freezed.dart';

@injectable
class CartoperationsBloc
    extends Bloc<CartoperationsEvent, CartoperationsState> {
  final ICartOperationRepo cartOperationRepo;
  CartoperationsBloc(this.cartOperationRepo)
      : super(CartoperationsState.initial()) {
    on<InsertTOCart>((event, emit) async {
      Either<MainFailures, InsetCartRespModel> cartresp =
          await cartOperationRepo.insertitemtocart(event.cartitem);

      emit(
        cartresp.fold(
          (l) => CartoperationsState.initial(),
          (r) => Insertdatatocart(respModel: r),
        ),
      );
    });
    on<DeleteCartItem>((event, emit) async {
      Either<MainFailures, InsetCartRespModel> cartresp =
          await cartOperationRepo.deleteitemfromcart(event.cartitem);

      emit(
        cartresp.fold(
          (l) => CartoperationsState.initial(),
          (r) => Insertdatatocart(respModel: r),
        ),
      );
    });
  }
}
