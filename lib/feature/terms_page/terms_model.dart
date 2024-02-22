import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_model.freezed.dart';


@freezed
class TermsModel with _$TermsModel {
  factory TermsModel({
    required String asset,
    required String filename,
  }) = _TermsModel;

}
