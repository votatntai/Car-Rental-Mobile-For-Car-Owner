import 'package:car_rental_for_car_owner/models/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_result.freezed.dart';
part 'pagination_result.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationResult<T> with _$PaginationResult<T> {
  factory PaginationResult({
    required List<T> data,
    required Pagination pagination,
  }) = _PaginationResult<T>;

  factory PaginationResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginationResultFromJson(
        json,
        fromJsonT,
      );
}
