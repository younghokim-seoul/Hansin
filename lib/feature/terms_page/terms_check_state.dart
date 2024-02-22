import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_check_state.freezed.dart';


@freezed
class TermsCheckState with _$TermsCheckState {
  factory TermsCheckState({
    required bool all,
    required bool requiredConsent1,
    required bool requiredConsent2,
    required bool requiredConsent3,
  }) = _TermsCheckState;

}
