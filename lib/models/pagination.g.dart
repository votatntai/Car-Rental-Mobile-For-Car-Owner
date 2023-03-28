// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      totalRow: json['totalRow'] as int,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalRow': instance.totalRow,
    };
