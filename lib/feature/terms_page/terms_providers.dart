import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/feature/terms_page/terms_check_state.dart';
import 'package:hansin/feature/terms_page/terms_model.dart';
import 'package:path_provider/path_provider.dart';

final selectStateProvider =
    StateNotifierProvider.autoDispose<TermsCheckBoxNotifier, TermsCheckState>(
        (ref) => TermsCheckBoxNotifier());

class TermsCheckBoxNotifier extends StateNotifier<TermsCheckState> {
  TermsCheckBoxNotifier()
      : super(TermsCheckState(
            all: false,
            requiredConsent1: false,
            requiredConsent2: false,
            requiredConsent3: false));

  void checkAll() {
    if (state.all == true) {
      state = state.copyWith(
          all: false,
          requiredConsent1: false,
          requiredConsent2: false,
          requiredConsent3: false);
    } else {
      state = state.copyWith(
          all: true,
          requiredConsent1: true,
          requiredConsent2: true,
          requiredConsent3: true);
    }
  }

  void selectedConsent1() {
    state = state.copyWith(requiredConsent1: !state.requiredConsent1);
    checkComplete();
  }

  void selectedConsent2() {
    state = state.copyWith(requiredConsent2: !state.requiredConsent2);
    checkComplete();
  }

  void selectedConsent3() {
    state = state.copyWith(requiredConsent3: !state.requiredConsent3);
    checkComplete();
  }

  void checkComplete() {
    if (state.requiredConsent1 &&
        state.requiredConsent2 &&
        state.requiredConsent3) {
      state = state.copyWith(all: true);
    } else {
      state = state.copyWith(all: false);
    }
  }

}

final pdfReadProvider =
    FutureProvider.autoDispose.family<File, TermsModel>((ref, model) async {
  Completer<File> completer = Completer();
  var dir = await getApplicationDocumentsDirectory();
  File file = File("${dir.path}/${model.filename}");
  var data = await rootBundle.load(model.asset);
  var bytes = data.buffer.asUint8List();
  await file.writeAsBytes(bytes, flush: true);
  completer.complete(file);
  return completer.future;
});
