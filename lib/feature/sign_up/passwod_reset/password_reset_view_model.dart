import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/feature/sign_up/passwod_reset/password_reset_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@injectable
class PasswordResetViewModel implements ViewModelInterface {
  final passWordUiState = ArcSubject<PasswordResetState>();

  final ItemRepository _itemRepository;

  PasswordResetViewModel(this._itemRepository);

  void submit(Map<String, String> body) async {
    loadState(Loading());
    try {
      final response = await _itemRepository.resetPassword(body);
      Log.d(":::response => $response");
      loadState(response.result == "S" ? ResetSuccess() : ResetError());
    } on Exception catch (e) {
      Log.e(":::e => $e");
      loadState(ResetError());
    }
  }

  @override
  disposeAll() {
    passWordUiState.close();
  }

  @override
  loadState(state) {
    passWordUiState.val = state;
  }
}
