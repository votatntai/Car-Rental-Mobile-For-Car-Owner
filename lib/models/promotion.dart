import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';
part 'promotion.g.dart';

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required String id,
    required String name,
    String? description,
    required double discount,
  }) = _Promotion;

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);
}
