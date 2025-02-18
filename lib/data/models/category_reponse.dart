import 'package:elevate_1/data/models/category_model.dart';
import 'package:json_annotation/json_annotation.dart';
 part 'category_reponse.g.dart';
@JsonSerializable()
class CategoryReponse {
  int? result;
  List<CategoryModel>? data;
  CategoryReponse({
    this.result = 0,
    this.data = const [],
  });
  factory CategoryReponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryReponseFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryReponseToJson(this);
}
