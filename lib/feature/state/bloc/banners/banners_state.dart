part of 'banners_bloc.dart';

@freezed
class BannersState with _$BannersState {
  const factory BannersState.getBannerstate(
      {required List<BannersModel>? bannerslisy}) = GetBannerstate;
  const factory BannersState.getbannersfailedsstate() = Getbannersfailedsstate;

  factory BannersState.initial() =>
      const BannersState.getBannerstate(bannerslisy: null);
}
