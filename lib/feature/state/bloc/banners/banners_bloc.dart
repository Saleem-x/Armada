import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/banners_model/banners_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'banners_event.dart';
part 'banners_state.dart';
part 'banners_bloc.freezed.dart';

@injectable
class BannersBloc extends Bloc<BannersEvent, BannersState> {
  final IBannersRepo bannersRepo;
  BannersBloc(this.bannersRepo) : super(BannersState.initial()) {
    on<GetbannersEvent>((event, emit) async {
      Either<MainFailures, List<BannersModel>> getallbanners =
          await bannersRepo.getallBanner();

      emit(
        getallbanners.fold(
          (l) => const Getbannersfailedsstate(),
          (r) => GetBannerstate(bannerslisy: r),
        ),
      );
    });
  }
}
