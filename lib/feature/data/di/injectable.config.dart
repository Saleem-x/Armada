// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart' as _i3;
import 'package:armada/feature/domain/bannersrepo/bannersrepo.dart' as _i4;
import 'package:armada/feature/domain/cart/cartoperationsrepo.dart' as _i5;
import 'package:armada/feature/domain/featuredcategories/featuredcategoriesrepo.dart'
    as _i6;
import 'package:armada/feature/domain/loginuserrepo/loginuserrepo.dart' as _i7;
import 'package:armada/feature/domain/promotions/promotionsrepo.dart' as _i8;
import 'package:armada/feature/domain/recentordersrepo/recentordersrepo.dart'
    as _i9;
import 'package:armada/feature/domain/subcatrgories/subcategriesrepo.dart'
    as _i10;
import 'package:armada/feature/state/bloc/banners/banners_bloc.dart' as _i15;
import 'package:armada/feature/state/bloc/cartoperations/cartoperations_bloc.dart'
    as _i16;
import 'package:armada/feature/state/bloc/featuredcategories/featuredcategories_bloc.dart'
    as _i17;
import 'package:armada/feature/state/bloc/login/login_bloc.dart' as _i11;
import 'package:armada/feature/state/bloc/promotions/promtions_bloc.dart'
    as _i12;
import 'package:armada/feature/state/bloc/recentorders/recent_orders_bloc.dart'
    as _i13;
import 'package:armada/feature/state/bloc/subcategories/subcategories_bloc.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IBannersRepo>(() => _i4.BannersRepo());
    gh.lazySingleton<_i3.ICartOperationRepo>(() => _i5.CartOperationRepo());
    gh.lazySingleton<_i3.IFeturedCategoriesRepo>(
        () => _i6.FeaturedCategoriesRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i7.LoginUserRepo());
    gh.lazySingleton<_i3.IPromotionsRepo>(() => _i8.PromtionsRepo());
    gh.lazySingleton<_i3.IRecentOrdersRepo>(() => _i9.RecentOrdersRepo());
    gh.lazySingleton<_i3.ISubCategories>(() => _i10.SubcategoryRepo());
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i12.PromtionsBloc>(
        () => _i12.PromtionsBloc(gh<_i3.IPromotionsRepo>()));
    gh.factory<_i13.RecentOrdersBloc>(
        () => _i13.RecentOrdersBloc(gh<_i3.IRecentOrdersRepo>()));
    gh.factory<_i14.SubcategoriesBloc>(
        () => _i14.SubcategoriesBloc(gh<_i3.ISubCategories>()));
    gh.factory<_i15.BannersBloc>(
        () => _i15.BannersBloc(gh<_i3.IBannersRepo>()));
    gh.factory<_i16.CartoperationsBloc>(
        () => _i16.CartoperationsBloc(gh<_i3.ICartOperationRepo>()));
    gh.factory<_i17.FeaturedcategoriesBloc>(
        () => _i17.FeaturedcategoriesBloc(gh<_i3.IFeturedCategoriesRepo>()));
    return this;
  }
}
