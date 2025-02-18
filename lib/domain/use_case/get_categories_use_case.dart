import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/domain/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  final HomeRepo homeRepo;

  GetCategoriesUseCase(this.homeRepo);

  Future<ApiResults> call() async {
    return await homeRepo.getCategories();
  }
}
