import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/featured_categories/featured_categories.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'featuredcategories_event.dart';
part 'featuredcategories_state.dart';
part 'featuredcategories_bloc.freezed.dart';

@injectable
class FeaturedcategoriesBloc
    extends Bloc<FeaturedcategoriesEvent, FeaturedcategoriesState> {
  final IFeturedCategoriesRepo categoryrepo;
  FeaturedcategoriesBloc(this.categoryrepo)
      : super(FeaturedcategoriesState.initial()) {
    on<FeaturedcategoriesEvent>((event, emit) async {
      Either<MainFailures, List<FeaturedCategories>> categories =
          await categoryrepo.getallfeaturedcategories();

      emit(
        categories.fold(
          (l) => const GetcatgFailedState(),
          (r) => Getfeatiredcategories(featuredcategories: r),
        ),
      );
    });
  }
}
