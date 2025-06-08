import 'package:bloc_project/business_logic/cubit/characters_cubit.dart';
import 'package:bloc_project/constants/app_colors.dart';
import 'package:bloc_project/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildBlocWidget extends StatelessWidget {
  const BuildBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          return HomeViewBody(
            characters: state.characters,
            itemCount: state.characters.length,
          );
        } else if (state is CharactersFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Center(
            child: CircularProgressIndicator(color: AppColors.myYellow),
          );
        }
      },
    );
  }
}
