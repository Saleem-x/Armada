part of 'home_carousalchanger_cubit.dart';

@freezed
class HomeCarousalchangerState with _$HomeCarousalchangerState {
  const factory HomeCarousalchangerState.currentpage({required int idx}) =
      Currentpage;

  factory HomeCarousalchangerState.initial() =>
      const HomeCarousalchangerState.currentpage(idx: 0);
}
