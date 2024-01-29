import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_carousalchanger_state.dart';
part 'home_carousalchanger_cubit.freezed.dart';

class HomeCarousalchangerCubit extends Cubit<HomeCarousalchangerState> {
  HomeCarousalchangerCubit() : super(HomeCarousalchangerState.initial());

  void changepage(int idx) {
    emit(Currentpage(idx: idx));
  }
}
