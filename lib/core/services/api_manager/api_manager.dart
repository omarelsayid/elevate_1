import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:elevate_1/config/constans.dart';
import 'package:elevate_1/core/services/api_service.dart';
import 'package:elevate_1/data/models/category_reponse.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
// Provide a dio instance// config your dio headers globally
  final client = RestClient(
    Dio(BaseOptions(
      baseUrl: BASE_URl,
    )),
  );
  Future<CategoryReponse> getCategoriesData({required String endPoint}) async {
    CategoryReponse categoriesResponse = await client.getCategories(endPoint);
    return categoriesResponse;
  }
}
