// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryReponse _$CategoryReponseFromJson(Map<String, dynamic> json) =>
    CategoryReponse(
      result: (json['result'] as num?)?.toInt() ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CategoryReponseToJson(CategoryReponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
    };
