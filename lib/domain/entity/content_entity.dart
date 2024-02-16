import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_entity.freezed.dart';

@freezed
class ContentInfoEntity with _$ContentInfoEntity {
  factory ContentInfoEntity({
    required String result,
    required String resultMsg,
    required String contentName,
    required String contentImage,
  }) = _ContentInfoEntity;
}