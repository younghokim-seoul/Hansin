import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/domain/repository/setting_repository.dart';
import 'package:hansin/feature/setting/setting_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SettingViewModel implements ViewModelInterface {

  final settingUiEvent = ArcSubject<SettingState>();

  final ItemRepository _itemRepository;
  final SettingRepository _settingRepository;

  SettingViewModel(this._itemRepository,this._settingRepository);

  void onDeleteUser() async {
    Log.d(":::onDeleteUser");
    Map<String, String> param = {};
    param['userId'] = await _settingRepository.getUserId();
    try {
      final response = await _itemRepository.deleteUser(param);
      Log.d(":::response => $response");
      await _settingRepository.saveUserId(userIds: "");
      loadState(UserDeleteSuccess());
    } on Exception catch (e) {
      Log.e(":::e => $e");
      loadState(Error());
    }
  }

  void onLogoutUser() async {
    Log.d(":::onLogoutUser");
    // await _settingRepository.saveUserId(userIds: "");
    loadState(LogOutSuccess());
  }

  @override
  disposeAll() {}

  @override
  loadState(state) {
    settingUiEvent.val = state;
  }
}
