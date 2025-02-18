import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/domain/entities/category_entity.dart';

abstract class HomeRepo {
  Future<ApiResults> getCategories();
}
