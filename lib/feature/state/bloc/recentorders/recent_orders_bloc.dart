import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/recent_ordered/recent_ordered.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'recent_orders_event.dart';
part 'recent_orders_state.dart';
part 'recent_orders_bloc.freezed.dart';

@injectable
class RecentOrdersBloc extends Bloc<RecentOrdersEvent, RecentOrdersState> {
  final IRecentOrdersRepo recentOrdersRepo;
  RecentOrdersBloc(this.recentOrdersRepo) : super(RecentOrdersState.initial()) {
    on<GetRecentOrdersEvent>((event, emit) async {
      Either<MainFailures, List<RecentOrdered>> recentorders =
          await recentOrdersRepo.getallRecentOrders(event.cusID, event.userID);

      emit(
        recentorders.fold(
          (l) => const Getrecentfailed(),
          (r) => GetRecentOrdersState(recentorders: r),
        ),
      );
    });
  }
}
