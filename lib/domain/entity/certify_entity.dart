import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hansin/feature/sign_up/certify/pass_certify_page.dart';

part 'certify_entity.freezed.dart';

@freezed
class CertifyEntity with _$CertifyEntity {
  factory CertifyEntity({
    required int code,
    required String name,
    required String gender,
    required String phone,
    required CertifyType type,
  }) = _CertifyEntity;
}
