part of 'counter_home_cubit.dart';

@freezed
class CounterHomeState with _$CounterHomeState {
  const factory CounterHomeState.changeCountState({required int count}) =
      ChangeCountState;

  factory CounterHomeState.initial() =>
      const CounterHomeState.changeCountState(count: 0);
}
