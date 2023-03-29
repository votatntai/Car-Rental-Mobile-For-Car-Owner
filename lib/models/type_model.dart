import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_model.freezed.dart';
part 'type_model.g.dart';

@freezed
class TypeModel with _$TypeModel {
  factory TypeModel({
    required String id,
    required String name,
    String? description,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
