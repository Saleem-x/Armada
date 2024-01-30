part of 'recent_orders_bloc.dart';

@freezed
class RecentOrdersEvent with _$RecentOrdersEvent {
  const factory RecentOrdersEvent.getRecentOrdersEvent(
      {required String userID, required String cusID}) = GetRecentOrdersEvent;
}
