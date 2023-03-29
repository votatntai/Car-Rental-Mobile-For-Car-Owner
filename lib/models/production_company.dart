import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_company.freezed.dart';
part 'production_company.g.dart';

@freezed
class ProductionCompany with _$ProductionCompany {
  factory ProductionCompany({
    required String id,
    required String name,
    String? description,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);
}
