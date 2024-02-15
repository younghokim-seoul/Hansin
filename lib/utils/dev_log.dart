import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hansin/utils/constant.dart';
import 'package:hansin/utils/extension/value_extension.dart';

enum LogLevel {
  v, // explain: many logs
  d, // explain: connection, data logs
  i, // explain: class lifecycle, method call
  w, // explain: except case but not error
  e, // explain: runtime error / exception
}

class Log {
  static void log(String text, String prefix) {
    if (!kReleaseMode) {
      try {
        if (Platform.isAndroid) {
          // explain: android log length limit - sub text
          final pattern = RegExp('.{1,800}');
          pattern
              .allMatches(text)
              .forEach((match) => print(prefix + match.group(0)!));
        } else if (Platform.isIOS) {
          print(prefix + text);
        }
      } on Exception {
        print('log print error');
      }
    }
  }

  static void v(String? text) {
    switch (Const.logLevel) {
      case LogLevel.v:
        log("$text", "[💬] >> ");
        break;
      case LogLevel.d:
      case LogLevel.i:
      case LogLevel.w:
      case LogLevel.e:
        break;
      default:
        break;
    }
  }

  static void d(String text) {
    switch (Const.logLevel) {
      case LogLevel.v:
      case LogLevel.d:
        log(text, "[ℹ️] >> ");
        break;
      case LogLevel.i:
      case LogLevel.w:
      case LogLevel.e:
        break;
      default:
        break;
    }
  }

  static void i(String text) {
    switch (Const.logLevel) {
      case LogLevel.v:
      case LogLevel.d:
      case LogLevel.i:
        if (!text.isNullOrEmpty) {
          log(text, "[🔬] >> ");
        }
        break;
      case LogLevel.w:
      case LogLevel.e:
        break;
      default:
        break;
    }
  }

  static void w(String text) {
    switch (Const.logLevel) {
      case LogLevel.v:
      case LogLevel.d:
      case LogLevel.i:
      case LogLevel.w:
        if (!text.isNullOrEmpty) {
          log(text, "[⚠️] >> ");
        }
        var exception = OtherException(text);
        var stack = StackTrace.current;

        log(exception.toString(), "[⚠️] >> ");
        log(stack.toString(), "[⚠️] >> ");
        break;
      case LogLevel.e:
        break;
      default:
        break;
    }
  }

  static void e(String? text) {
    switch (Const.logLevel) {
      case LogLevel.v:
      case LogLevel.d:
      case LogLevel.i:
      case LogLevel.w:
      case LogLevel.e:
        if (!text.isNullOrEmpty) {
          log("$text", "[‼️] >> ");
        }
        break;
      default:
        break;
    }
  }
}

class OtherException implements Exception {
  String cause;

  OtherException(this.cause);

  @override
  String toString() {
    return cause;
  }
}
