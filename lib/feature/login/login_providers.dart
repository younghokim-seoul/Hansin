import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefs = FutureProvider<SharedPreferences>(
    (_) async => await SharedPreferences.getInstance());

final userCacheProvider = StateNotifierProvider<UserIds, String>((ref) {
  final pref = ref.watch(sharedPrefs).maybeWhen(
        data: (value) => value,
        orElse: () => null,
      );
  return UserIds(pref);
});

class UserIds extends StateNotifier<String> {
  UserIds(this.pref) : super(pref?.getString("userIds") ?? "");

  final SharedPreferences? pref;

  void setLoginUserIds(String userIds) {
    state = userIds;
    pref!.setString("userIds", state);
  }
}
