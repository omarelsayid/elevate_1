// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/data/models/category_model.dart';
import 'package:elevate_1/data/models/category_reponse.dart';
import 'package:elevate_1/domain/entities/category_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:elevate_1/core/services/api_manager/api_manager.dart';
import 'package:elevate_1/data/data_source/data_scource.dart';

@Injectable(as: HomeDataSource)
class RemoteDataScource implements HomeDataSource {
  ApiManager apiManager;
  RemoteDataScource(
    this.apiManager,
  );
  @override
  Future<ApiResults> getCategories() async {
    try {
      CategoryReponse results =
          await apiManager.getCategoriesData(endPoint: 'categories');
      var data = results.data;

      List<CategoryEntity> categories =
          (data as List<CategoryModel>).map((item) => item.toEntity() ).toList();

      return ApiScuccess<List<CategoryEntity>>(data: categories);
    } on DioException catch (e) {
      return APiError(error: e as Exception);
    }
  }

  @override
  Future<void> addCategory() {
    // TODO: implement addCategory
    throw UnimplementedError();
  }
}
