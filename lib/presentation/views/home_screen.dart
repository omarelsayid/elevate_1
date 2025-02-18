import 'package:elevate_1/core/services/di.dart';
import 'package:elevate_1/presentation/cubits/home_cubit/home_cubit.dart';
import 'package:elevate_1/presentation/cubits/home_cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeCubit homeCubit = getIt.get<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('gggg'),
        ),
      ),
    );
  }
}
