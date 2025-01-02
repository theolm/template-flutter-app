// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:template_flutter/src/data/increment_repository.dart' as _i325;
import 'package:template_flutter/src/domain/increment_use_case.dart' as _i303;
import 'package:template_flutter/src/presentation/demo_viewmodel.dart' as _i288;

const String _dev = 'dev';
const String _prod = 'prod';

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
    gh.factory<_i325.IIncrementRepository>(
      () => _i325.DevIncrementRepository(),
      registerFor: {_dev},
    );
    gh.factory<_i303.IIncrementUseCase>(
        () => _i303.IncrementUseCase(gh<_i325.IIncrementRepository>()));
    gh.factory<_i288.DemoViewModel>(
        () => _i288.DemoViewModel(gh<_i303.IIncrementUseCase>()));
    gh.factory<_i325.IIncrementRepository>(
      () => _i325.ProdIncrementRepository(),
      registerFor: {_prod},
    );
    return this;
  }
}
