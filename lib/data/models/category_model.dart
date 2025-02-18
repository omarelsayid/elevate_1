import 'package:elevate_1/domain/entities/category_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  final String? id;
  final String? name;
  final String? slug;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  CategoryModel(this.id, this.name, this.slug, this.image, this.createdAt,
      this.updatedAt);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  // factory CategoryModel.fromJson(Map<String, dynamic> json) {
  //   return CategoryModel(
  //     json["_id"],
  //     json["name"],
  //     json["slug"],
  //     json["image"],
  //     DateTime.parse(json["createdAt"]),
  //     DateTime.parse(json["updatedAt"]),
  //   );
  // }
  CategoryEntity toEntity() {
    return CategoryEntity(
      id,
      name,
      slug,
      image,
      createdAt,
      updatedAt,
    );
  }
}
