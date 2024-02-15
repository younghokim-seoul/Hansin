extension CheckValues<T> on T {
  /// String, List, Map : not null / not empty check
  /// strVariable.hasValue ? print("good") : print("bad")
  bool get hasValue => !(this == null ||
      ((this is String && (this as String).isEmpty) ||
          (this is List && (this as List).isEmpty) ||
          (this is Map && (this as Map).isEmpty)));

  /// String, List, Map : null / empty check
  /// strVariable.isNullOrEmpty? print("bad") : print("good")
  bool get isNullOrEmpty =>
      this == null ||
      ((this is String && (this as String).isEmpty) ||
          (this is List && (this as List).isEmpty) ||
          (this is Map && (this as Map).isEmpty));
}

extension StringToMap on String {
  bool toBoolean() {
    return (toLowerCase() == "true" || toLowerCase() == "1")
        ? true
        : (toLowerCase() == "false" || toLowerCase() == "0"
            ? false
            : throw ArgumentError('Invalid request body "$this".'));
  }
}

extension DateTimeExtensions on DateTime {
  String getKey() {
    return "$year년 $month월 $day일";
  }
}

