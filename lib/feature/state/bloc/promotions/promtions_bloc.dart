import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/promotions_model/promotions_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'promtions_event.dart';
part 'promtions_state.dart';
part 'promtions_bloc.freezed.dart';

@injectable
class PromtionsBloc extends Bloc<PromtionsEvent, PromtionsState> {
  final IPromotionsRepo promotionsRepo;
  PromtionsBloc(this.promotionsRepo) : super(PromtionsState.initial()) {
    on<Getallpromotions>((event, emit) async {
      Either<MainFailures, List<PromotionsModel>> promotions =
          await promotionsRepo.getallpromotions();
      emit(
        promotions.fold(
          (l) => PromtionsState.initial(),
          (r) => GetPromotionsState(promtions: r),
        ),
      );
    });
  }
}
