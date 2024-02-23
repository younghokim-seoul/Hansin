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
import 'package:hansin/data/repository/item_repository_impl.dart' as _i8;
import 'package:hansin/data/repository/setting_repository_impl.dart' as _i6;
import 'package:hansin/domain/repository/item_repository.dart' as _i7;
import 'package:hansin/domain/repository/setting_repository.dart' as _i5;
import 'package:hansin/feature/login/phone/phone_join_view_model.dart' as _i11;
import 'package:hansin/feature/mega_sale/mega_sale_view_model.dart' as _i10;
import 'package:hansin/feature/show_room/reservation_register/reservation_register_view_model.dart'
    as _i12;
import 'package:hansin/feature/show_room/show_room_reservation_view_model.dart'
    as _i13;
import 'package:hansin/feature/sign_up/sign_up_view_model.dart' as _i14;
import 'package:hansin/feature/stock/live_stock_view_model.dart' as _i9;
import 'package:hansin/feature/verification/verification_view_model.dart'
    as _i15;
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
    gh.singleton<_i5.SettingRepository>(_i6.SettingRepositoryImpl());
    gh.lazySingleton<_i7.ItemRepository>(
        () => _i8.ItemRepositoryImpl(gh<_i3.RemoteDataSource>()));
    gh.factory<_i9.LiveStockViewModel>(
        () => _i9.LiveStockViewModel(gh<_i7.ItemRepository>()));
    gh.factory<_i10.MegaSaleViewModel>(
        () => _i10.MegaSaleViewModel(gh<_i7.ItemRepository>()));
    gh.factory<_i11.PhoneJoinViewModel>(() => _i11.PhoneJoinViewModel(
          gh<_i7.ItemRepository>(),
          gh<_i5.SettingRepository>(),
        ));
    gh.factory<_i12.ReservationRegisterViewModel>(
        () => _i12.ReservationRegisterViewModel(
              gh<_i7.ItemRepository>(),
              gh<_i5.SettingRepository>(),
            ));
    gh.factory<_i13.ShowRoomReservationViewModel>(
        () => _i13.ShowRoomReservationViewModel(gh<_i7.ItemRepository>()));
    gh.factory<_i14.SignUpViewModel>(
        () => _i14.SignUpViewModel(gh<_i7.ItemRepository>()));
    gh.factory<_i15.VerificationModel>(
        () => _i15.VerificationModel(gh<_i7.ItemRepository>()));
    return this;
  }
}
