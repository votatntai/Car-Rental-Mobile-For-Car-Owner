import 'package:freezed_annotation/freezed_annotation.dart';

part 'scroll_pagination.freezed.dart';

@freezed
class ScrollPagination<T> with _$ScrollPagination<T> {
  factory ScrollPagination({
    List<T>? itemList,
    dynamic error,
    int? nextPageKey,
  }) = _ScrollPagination<T>;
}
