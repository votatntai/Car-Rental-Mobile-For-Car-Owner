import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    required String id,
    required String orderId,
    required double customerId,
    required int start,
    String? content,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}
