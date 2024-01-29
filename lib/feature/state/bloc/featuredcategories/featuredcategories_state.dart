part of 'featuredcategories_bloc.dart';

@freezed
class FeaturedcategoriesState with _$FeaturedcategoriesState {
  const factory FeaturedcategoriesState.getfeatiredcategories(
          {required List<FeaturedCategories>? featuredcategories}) =
      Getfeatiredcategories;

  const factory FeaturedcategoriesState.getcatgFailedState() =
      GetcatgFailedState;

  factory FeaturedcategoriesState.initial() =>
      const FeaturedcategoriesState.getfeatiredcategories(
          featuredcategories: null);
}
