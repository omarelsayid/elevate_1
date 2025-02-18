import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/data/models/category_model.dart';

abstract class HomeDataSource {
  // Future<List<CategoryModel>> getCategories();
  Future<ApiResults> getCategories();

  Future<void> addCategory();
}

abstract class LocalHomeDataSource {
  // Future<List<CategoryModel>> getCategories();
  Future<ApiResults> getCategories();


}
