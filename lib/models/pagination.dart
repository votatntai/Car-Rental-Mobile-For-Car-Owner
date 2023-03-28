import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    required int pageNumber,
    required int pageSize,
    required int totalRow,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
