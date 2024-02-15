import 'package:hansin/domain/repository/item_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class VerificationModel {

  final ItemRepository _itemRepository;

  VerificationModel(this._itemRepository);

  void onLoadData() async {
    await _itemRepository.getContentInfo();
  }

  // @override
  // disposeAll() {
  //   // TODO: implement disposeAll
  //   throw UnimplementedError();
  // }
  //
  // @override
  // loadState(state) {
  //   // TODO: implement loadState
  //   throw UnimplementedError();
  // }
  
}
