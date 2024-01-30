import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_home_state.dart';
part 'counter_home_cubit.freezed.dart';

class CounterHomeCubit extends Cubit<CounterHomeState> {
  CounterHomeCubit() : super(CounterHomeState.initial());

  void incresecount(int count) {
    emit(ChangeCountState(count: count + 1));
  }

  void decresecount(int count) {
    emit(ChangeCountState(count: count == 0 ? 0 : count - 1));
  }
}
