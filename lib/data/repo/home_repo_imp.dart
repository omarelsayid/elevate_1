import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/data/data_source/data_scource.dart';
import 'package:elevate_1/domain/entities/category_entity.dart';
import 'package:elevate_1/domain/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImp implements HomeRepo {
  final HomeDataSource remoteDataScource;

  HomeRepoImp({required this.remoteDataScource});
  @override
  Future<ApiResults> getCategories() async {
    return await remoteDataScource.getCategories();
  }
}
