import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PhoneJoinViewModel {
  final ItemRepository _itemRepository;

  PhoneJoinViewModel(this._itemRepository);

  final isActiveLogin = false.sbj;

  void setClickable(bool isClickable) {
    isActiveLogin.val = isClickable;
  }

  void login(String id, String pw) async {
    await _itemRepository.getItemInfo();
  }
}
