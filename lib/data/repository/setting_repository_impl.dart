import 'package:hansin/domain/repository/setting_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';



@Singleton(as: SettingRepository)
class SettingRepositoryImpl extends SettingRepository{
  final Future<SharedPreferences> _instanceFuture = SharedPreferences.getInstance();
  @override
  Future<String> getUserId() async {
    final prefs = await _instanceFuture;
    return prefs.getString('userIds') ?? "";
  }

  @override
  Future<void> saveUserId({required String userIds}) async{
    final prefs = await _instanceFuture;
    await prefs.setString('userIds',userIds);
  }

}