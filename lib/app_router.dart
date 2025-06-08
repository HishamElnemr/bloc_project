import 'package:bloc_project/business_logic/cubit/characters_cubit.dart';
import 'package:bloc_project/data/services/characters_services.dart';
import 'package:bloc_project/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:bloc_project/data/repos/characters_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepo = CharactersRepo(charactersServices: CharactersServices());
    charactersCubit = CharactersCubit(charactersRepo);
  }
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => charactersCubit,
                child: const HomeView(),
              ),
          settings: settings,
        );
      default:
        return null;
    }
  }
}
