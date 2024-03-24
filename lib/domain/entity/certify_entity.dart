import 'package:freezed_annotation/freezed_annotation.dart';

part 'certify_entity.freezed.dart';

@freezed
class CertifyEntity with _$CertifyEntity {
  factory CertifyEntity({
    required int code,
    required String name,
    required String gender,
    required String phone,
  }) = _CertifyEntity;
}
