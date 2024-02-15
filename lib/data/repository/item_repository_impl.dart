import 'package:hansin/data/datasource/remote/remote_datasource.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:injectable/injectable.dart';




@LazySingleton(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {

  RemoteDataSource dataSource;

  ItemRepositoryImpl(this.dataSource);

  @override
  Future<void> getContentInfo() {
    // TODO: implement getContentInfo
    throw UnimplementedError();
  }

}