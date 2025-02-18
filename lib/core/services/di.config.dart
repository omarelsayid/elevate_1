// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/data_source/data_scource.dart' as _i140;
import '../../data/data_source/remote/local/local_data_scouce.dart' as _i441;
import '../../data/data_source/remote/remote_data_scource.dart' as _i160;
import '../../data/repo/home_repo_imp.dart' as _i848;
import '../../domain/repo/home_repo.dart' as _i645;
import '../../domain/use_case/get_categories_use_case.dart' as _i351;
import '../../presentation/cubits/home_cubit/home_cubit.dart' as _i809;
import 'api_manager/api_manager.dart' as _i674;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i674.ApiManager>(() => _i674.ApiManager());
    gh.factory<_i140.LocalHomeDataSource>(() => _i441.LocalDataScouce());
    gh.factory<_i140.HomeDataSource>(
        () => _i160.RemoteDataScource(gh<_i674.ApiManager>()));
    gh.factory<_i645.HomeRepo>(
        () => _i848.HomeRepoImp(remoteDataScource: gh<_i140.HomeDataSource>()));
    gh.factory<_i351.GetCategoriesUseCase>(
        () => _i351.GetCategoriesUseCase(gh<_i645.HomeRepo>()));
    gh.factory<_i809.HomeCubit>(
        () => _i809.HomeCubit(gh<_i351.GetCategoriesUseCase>()));
    return this;
  }
}
