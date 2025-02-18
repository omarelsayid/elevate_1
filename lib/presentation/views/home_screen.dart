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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                homeCubit.call();
              },
              child: BlocBuilder<HomeCubit, HomeStates>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state.error != null) {
                    return Text(state.error.toString());
                  } else if (state.categories.isNotEmpty) {
                    return Expanded(
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: state.categories.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(state.categories[index].name!),
                            );
                          },
                        ),
                      ),
                    );
                  }
                  return Text('hoome');
                },
                bloc: homeCubit,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                homeCubit.call();
              },
              child: BlocBuilder<HomeCubit, HomeStates>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state.error != null) {
                    return Text(state.error.toString());
                  } else if (state.categories.isNotEmpty) {
                    return Expanded(
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: state.categories.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(state.categories[index].name!),
                            );
                          },
                        ),
                      ),
                    );
                  }
                  return Text('HOMEEEE');
                },
                bloc: homeCubit,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
