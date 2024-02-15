// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hansin/data/datasource/remote/http_request.dart' as _i4;
import 'package:hansin/data/datasource/remote/remote_datasource.dart' as _i3;
import 'package:hansin/data/repository/item_repository_impl.dart' as _i6;
import 'package:hansin/domain/repository/item_repository.dart' as _i5;
import 'package:hansin/feature/verification/verification_view_model.dart'
    as _i7;
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
    gh.lazySingleton<_i3.RemoteDataSource>(() => _i4.HttpRequest());
    gh.lazySingleton<_i5.ItemRepository>(
        () => _i6.ItemRepositoryImpl(gh<_i3.RemoteDataSource>()));
    gh.factory<_i7.VerificationModel>(
        () => _i7.VerificationModel(gh<_i5.ItemRepository>()));
    return this;
  }
}
