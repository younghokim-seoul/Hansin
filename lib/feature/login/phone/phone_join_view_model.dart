import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/domain/repository/setting_repository.dart';
import 'package:hansin/feature/login/phone/phone_join_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PhoneJoinViewModel implements ViewModelInterface {
  final loginUiState = ArcSubject<PhoneJoinState>();

  final ItemRepository _itemRepository;
  final SettingRepository _settingRepository;

  PhoneJoinViewModel(this._itemRepository,this._settingRepository);

  final isActiveLogin = false.sbj;

  void setClickable(bool isClickable) {
    isActiveLogin.val = isClickable;
  }

  void login(String id, String pw) async {
    Map<String, dynamic> param = {};
    param['userId'] = id;
    param['userPwd'] = pw;
    param['adminPageYn'] = " ";
    loadState(Loading());
    try {
      final response = await _itemRepository.login(param);
      Log.i("::::response => $response");
      if (response.result == "S") {
        await _settingRepository.saveUserId(userIds: id);
        loadState(Success(entity: response));
      } else {
        loadState(Error());
      }
    } on Exception catch (e) {
      Log.e(e.toString());
      loadState(Error());
    }
  }

  @override
  disposeAll() {}

  @override
  loadState(state) {
    loginUiState.val = state;
  }
}
