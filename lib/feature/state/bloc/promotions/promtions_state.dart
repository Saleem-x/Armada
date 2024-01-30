part of 'promtions_bloc.dart';

@freezed
class PromtionsState with _$PromtionsState {
  const factory PromtionsState.getPromotionsState(
      {required List<PromotionsModel>? promtions}) = GetPromotionsState;

  factory PromtionsState.initial() =>
      const PromtionsState.getPromotionsState(promtions: null);
}
