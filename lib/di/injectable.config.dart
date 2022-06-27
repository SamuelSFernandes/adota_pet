// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/animals_data_source.dart' as _i3;
import '../data/repositories/animals_repository.dart' as _i4;
import '../src/ui/home/controller/home_controller.dart' as _i5;
import '../src/ui/login/controller/login_controller.dart' as _i6;
import '../src/ui/view_animal_profile/controller/view_animal_controller.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AnimalsDataSource>(() => _i3.AnimalsDataSource());
  gh.factory<_i4.AnimalsRepository>(
      () => _i4.AnimalsRepository(dataSource: get<_i3.AnimalsDataSource>()));
  gh.singleton<_i5.HomeController>(_i5.HomeController());
  gh.singleton<_i6.LoginController>(_i6.LoginController());
  gh.singleton<_i7.ViewAnimalController>(_i7.ViewAnimalController());
  return get;
}
