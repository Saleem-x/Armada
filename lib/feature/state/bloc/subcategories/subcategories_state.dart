part of 'subcategories_bloc.dart';

@freezed
class SubcategoriesState with _$SubcategoriesState {
  const factory SubcategoriesState.getSubCategoriesState(
          {required List<FtrdSubCatgryModel>? subcategories}) =
      GetSubCategoriesState;
  const factory SubcategoriesState.getsubctgryFailed() = GetsubctgryFailed;

  factory SubcategoriesState.initial() =>
      const SubcategoriesState.getSubCategoriesState(subcategories: null);
}
