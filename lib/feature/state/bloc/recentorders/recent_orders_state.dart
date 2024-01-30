part of 'recent_orders_bloc.dart';

@freezed
class RecentOrdersState with _$RecentOrdersState {
  const factory RecentOrdersState.getRecentOrdersState(
      {required List<RecentOrdered>? recentorders}) = GetRecentOrdersState;
  const factory RecentOrdersState.getrecentfailed() = Getrecentfailed;

  factory RecentOrdersState.initial() =>
      const RecentOrdersState.getRecentOrdersState(recentorders: null);
}
