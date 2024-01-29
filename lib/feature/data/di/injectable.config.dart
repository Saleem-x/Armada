// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart' as _i3;
import 'package:armada/feature/domain/bannersrepo/bannersrepo.dart' as _i4;
import 'package:armada/feature/domain/featuredcategories/featuredcategoriesrepo.dart'
    as _i5;
import 'package:armada/feature/state/bloc/banners/banners_bloc.dart' as _i6;
import 'package:armada/feature/state/bloc/featuredcategories/featuredcategories_bloc.dart'
    as _i7;
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
    gh.lazySingleton<_i3.IFeturedCategoriesRepo>(
        () => _i5.FeaturedCategoriesRepo());
    gh.factory<_i6.BannersBloc>(() => _i6.BannersBloc(gh<_i3.IBannersRepo>()));
    gh.factory<_i7.FeaturedcategoriesBloc>(
        () => _i7.FeaturedcategoriesBloc(gh<_i3.IFeturedCategoriesRepo>()));
    return this;
  }
}
