import 'package:hansin/data/model/response/reservation_vo.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/domain/repository/setting_repository.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_provider.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ReservationRegisterViewModel implements ViewModelInterface {
  final reservationRegisterUiState = ArcSubject<ReservationRegisterState>(seed : Initialize());

  final ItemRepository _itemRepository;
  final SettingRepository _settingRepository;

  ReservationRegisterViewModel(this._itemRepository,this._settingRepository);

  void onLoadData(DateTime dateTime) async {
    Log.d(":::onLoadData =>");
    Map<String, String> param = {};
    param['year'] = dateTime.year.toString();
    param['month'] = dateTime.month.toString();
    param['day'] = dateTime.day.toString();
    loadState(Loading());
    try {
      final response = await _itemRepository.getRestCalendarDetail(param);
      Log.d(":::response => $response");
      loadState(Success(entity: response));
    } on Exception catch (e) {
      Log.e(":::e => $e");
      loadState(Error());
    }
  }

  Future<ReservationVO> registerReservation(TimeType type , DateTime targetTime) async {
    Map<String, String> param = {};
    param['userId'] = await _settingRepository.getUserId();
    param['timeFlag'] = type.name;
    param['year'] = targetTime.year.toString();
    param['month'] = targetTime.month.toString();
    param['day'] = targetTime.day.toString();
    return await _itemRepository.insertResInfo(param);
  }

  @override
  disposeAll() {}

  @override
  loadState(state) {
    reservationRegisterUiState.val = state;
  }
}
