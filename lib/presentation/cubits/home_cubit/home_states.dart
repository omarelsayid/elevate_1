// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/data/models/category_model.dart';
import 'package:elevate_1/domain/entities/category_entity.dart';

class HomeStates extends Equatable {
  bool isLoading = false;
  String? error;
  List<CategoryEntity> categories = [];
  List<CategoryEntity> categories2 = [];
  HomeStates({
    this.isLoading = false,
    this.categories = const [],
    this.categories2 = const [],
    this.error,
  });
  copyWith({
    bool? isLoading,
    String? error,
    List<CategoryEntity>? categories,
    List<CategoryEntity>? categories2,
  }) {
    return HomeStates(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      categories: categories ?? this.categories,
      categories2: categories2 ?? this.categories2,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, categories, categories2];
}

// class InitialHomeState extends HomeStates {}

// class LoadingHomeState extends HomeStates {}

// class SuccessHomeState extends HomeStates {
//   ApiScuccess<List<CategoryEntity>> categories;
//   SuccessHomeState({
//     required this.categories,
//   });
// }

// class FailedHomeState extends HomeStates {
//   APiError error;
//   FailedHomeState({
//     required this.error,
//   });
// }
