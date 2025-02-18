import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/data/data_source/data_scource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocalHomeDataSource)
class LocalDataScouce implements LocalHomeDataSource {
  @override
  Future<ApiResults> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }
}
