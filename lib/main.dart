import 'package:dio/dio.dart';
import 'package:elevate_1/core/services/api_service.dart';
import 'package:elevate_1/core/services/custom_bloc_observer.dart';
import 'package:elevate_1/core/services/di.dart';
import 'package:elevate_1/domain/use_case/get_categories_use_case.dart';
import 'package:elevate_1/presentation/cubits/home_cubit/home_cubit.dart';
import 'package:elevate_1/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CustomBlocObserver();

  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
          create: (context) => HomeCubit(getIt.get<GetCategoriesUseCase>()),
          child: HomeScreen()),
    );
  }
}
