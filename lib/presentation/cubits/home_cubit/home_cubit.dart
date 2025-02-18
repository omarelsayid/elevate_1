import 'dart:developer';

import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/domain/entities/category_entity.dart';
import 'package:elevate_1/domain/use_case/get_categories_use_case.dart';
import 'package:elevate_1/presentation/cubits/home_cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// we use here use case
@injectable
class HomeCubit extends Cubit<HomeStates> {
  GetCategoriesUseCase getCategoriesUseCase;
  HomeCubit(this.getCategoriesUseCase) : super(HomeStates()){
    call();
  }
  Future<void> call() async {
    emit(state.copyWith(isLoading: true));
    Future.wait([
      getCategories(),
      getProducts(),
    ]);
    emit(state.copyWith(isLoading: false));
  }

  Future<void> getCategories() async {
    ApiResults<dynamic> result = await getCategoriesUseCase.call();

    switch (result) {
      case ApiScuccess():
        emit(state.copyWith(
          categories: result.data as List<CategoryEntity>,
          categories2: result.data as List<CategoryEntity>,
        ));
        break;
      case APiError():
        emit(state.copyWith(
          isLoading: false,
          error: result.error.toString(),
        ));

      default:
        log('rrrr');
    }
  }

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true));
    ApiResults<dynamic> result = await getCategoriesUseCase.call();

    switch (result) {
      case ApiScuccess():
        emit(state.copyWith(
          categories: result.data as List<CategoryEntity>,
          categories2: result.data as List<CategoryEntity>,
        ));
        break;
      case APiError():
        emit(state.copyWith(
          isLoading: false,
          error: result.error.toString(),
        ));

      default:
        log('rrrr');
    }
  }
}
