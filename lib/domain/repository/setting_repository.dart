abstract class SettingRepository {
  Future<void> saveUserId({required String userIds});

  Future<String> getUserId();
}
