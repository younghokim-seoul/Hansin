import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/feature/stock/live_stock_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignUpViewModel implements ViewModelInterface {
  final liveStockUiState = ArcSubject<LiveStockState>();

  final ItemRepository _itemRepository;

  SignUpViewModel(this._itemRepository);

  void submit(Map<String, String> body) async {
    Log.d(":::onLoadData =>");
    loadState(Loading());
    try {
      final response = await _itemRepository.getItemInfo();
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
    liveStockUiState.val = state;
  }
}
