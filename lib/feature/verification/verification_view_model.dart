import 'package:hansin/data/model/response/content_info_vo.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/feature/verification/verification_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class VerificationModel implements ViewModelInterface {
  final verificationUiState = ArcSubject<VerificationState>();

  final ItemRepository _itemRepository;

  VerificationModel(this._itemRepository);

  void onLoadData() async {
    Log.d(":::onLoadData =>");
    Map<String, String> param = {};
    param['contentName'] = ContentType.priceBtn.name;
    loadState(Loading());
    try {
      final response = await _itemRepository.getContentInfo(param);
      Log.d(":::response => $response");
      loadState(Success(entity: response));
    } on Exception catch (e) {
      Log.e(":::e => $e");
      loadState(Error());
    }
  }

  @override
  disposeAll() {}

  @override
  loadState(state) {
    verificationUiState.val = state;
  }
}
