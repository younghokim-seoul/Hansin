import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/feature/mega_sale/mega_sale_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MegaSaleViewModel implements ViewModelInterface{
  final megaSaleUiState = ArcSubject<MegaSaleState>();

  final ItemRepository _itemRepository;

  MegaSaleViewModel(this._itemRepository);

  void onLoadData(String contentName) async {
    Log.d(":::onLoadData =>");
    Map<String, String> param = {};
    param['contentName'] = contentName;
    loadState(Loading());
    try{
      final response = await _itemRepository.getContentInfo(param);
      Log.d(":::response => $response");
      loadState(Success(entity: response));
    } on Exception catch(e) {
      Log.e(":::e => $e");
      loadState(Error());
    }



  }

  @override
  disposeAll() {

  }

  @override
  loadState(state) {
    megaSaleUiState.val = state;
  }
}
