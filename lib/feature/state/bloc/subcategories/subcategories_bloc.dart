import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/ftrd_sub_catgry_model/ftrd_sub_catgry_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'subcategories_event.dart';
part 'subcategories_state.dart';
part 'subcategories_bloc.freezed.dart';

@injectable
class SubcategoriesBloc extends Bloc<SubcategoriesEvent, SubcategoriesState> {
  final ISubCategories subCategories;
  SubcategoriesBloc(this.subCategories) : super(SubcategoriesState.initial()) {
    on<GetallSubCategoriesEvent>((event, emit) async {
      Either<MainFailures, List<FtrdSubCatgryModel>> subctgry =
          await subCategories.getallsubcategories();

      emit(
        subctgry.fold(
          (l) => const GetsubctgryFailed(),
          (r) => GetSubCategoriesState(subcategories: r),
        ),
      );
    });
  }
}
